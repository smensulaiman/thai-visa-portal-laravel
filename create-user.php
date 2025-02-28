<?php
	$current_page = 'create_agent';
	
	// Include the header.php that handles the user session and initial HTML data
	require_once 'header.php';
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Create User</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	</head>
	<body>
		<div class="container-fluid  mt-5">
			<h2>Create User</h2>
			<form action="create-user-process.php" method="POST">
				<div class="row p-2">
					<div class="col-md-3 pr-1">
						<div class="form-group">
							<label for="username">Username:</label>
							<input type="text" class="form-control" id="username" name="username" required style="height:50px">
						</div>
					</div>
					<div class="col-md-3 pr-1">
						<div class="form-group">
							<label for="password">Password:</label>
							<input type="password" class="form-control" id="password" name="password" required style="height:50px">
						</div>
					</div>
				</div>
				<div class="row p-2">
					<div class="col-md-3 pr-1">
						<div class="form-group">
							<label for="full-name">Full Name:</label>
							<input type="text" class="form-control" id="full_name" name="full_name" required style="height:50px">
						</div>
					</div>
					<div class="col-md-3 pr-1">
						<div class="form-group">
							<label for="role">Role:</label>
							<select class="form-control" id="role" name="role" required style="height:50px">
								<option value="agent">Agent</option>
							</select>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Create User</button>
			</form>
			
			<br><br><br><br><br><br>
			
			
			
			
			
			
			
			
			
			
			
			<?php
				$agents = mysqli_query($db, "SELECT * FROM users WHERE full_name !='' AND  role='agent' ");
				
			?>
			
			
			
			<table cellpadding="5" cellspacing="0" width="50%" style="font-family:calibri;">
				<tr>
					<td style="background-color:black; color:white; font-weight:bold;">No.</td>
					<td style="background-color:black; color:white; font-weight:bold;">Name</td>
					<td style="background-color:black; color:white; font-weight:bold;">Username</td>
					<td style="background-color:black; color:white; font-weight:bold;">Password</td>
					<td style="background-color:black; color:white; font-weight:bold;">Role</td>
				</tr>
				
				<?php
					$serial = 1;
					foreach($agents as $a){
						
						if($color=='#eee'){
							$color = '#f6f6f6';
							}else{
							$color = '#eee';
						}
						
						echo '<tr>';
						echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">'.($serial++).'</td>';
						echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">'.$a['full_name'].'</td>';
						echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">'.$a['username'].'</td>';
						echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">****************</td>';
						echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">'.ucwords($a['role']).'</td>';
						echo '</tr>';
						
					}
				?>
				
				<?php
					echo '</table>';
					
				?>
				
				<br><br><br><br><br><br>
				
				
			</div>
			
			
			<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		</body>
	</html>
