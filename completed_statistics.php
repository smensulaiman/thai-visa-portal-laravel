<?php
	$current_page = 'completed_stats';
	
	// Include the header.php that handles the user session and initial HTML data
	require_once 'header.php';
	
	$agents_raw = mysqli_query($db, "SELECT full_name as agent_name FROM users WHERE full_name !='' AND role='agent' ");
	while($rs = mysqli_fetch_assoc($agents_raw)) {
		$agents[] = $rs['agent_name'];
	}
	
?>
<div class="container-fluid">
	
	<br><br><h2 style="margin:0">Statistics</h2><br>
	
	<?php
		
		unset($row);
		$row = array();
		$query = "SELECT thai_applications.agent, thai_applications.application_date, count(person_id) as qty from thai_applicants LEFT JOIN thai_applications on thai_applications.application_id = thai_applicants.application_id
		WHERE thai_applications.status='Old' AND thai_applications.payment_url!=''
		GROUP BY CONCAT(thai_applications.application_date, thai_applications.agent)
		ORDER BY thai_applications.application_date DESC, thai_applications.agent ASC ";
		$thai_stats = mysqli_query($db, $query);
		
		
		while($rs = mysqli_fetch_assoc($thai_stats)){
			$stats_data[] = $rs;
		}
		
		
		foreach($stats_data as $rs) {
			foreach ($agents as $a) {
				$data[$rs['application_date']][$a] = 0;
			}
		}
		foreach($stats_data as $rs) {
			$data[$rs['application_date']][$rs['agent']] = $rs['qty'];
		}
		
	?>
	<table cellpadding="5" cellspacing="0" width="50%" style="font-family:calibri;" class="">
		<tr>
			<td style="background-color:black; color:white; font-weight:bold;">No.</td>
			<td style="background-color:black; color:white; font-weight:bold;">Date</td>
			<?php
				foreach($agents as $a){
				?>
				<td style="background-color:black; color:white; font-weight:bold;"><?=$a?></td>
				<?php
				}
			?>
		</tr>
		
		<?php
			$serial = 1;
			foreach($data as $d => $a){
				
				if($color=='#eee'){
					$color = '#f6f6f6';
					}else{
					$color = '#eee';
				}
				
				echo '<tr>';
				echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">'.($serial++).'</td>';
				echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;">'.$d.'</td>';
				
				foreach($a as $n=>$ag){
					echo '<td style="background-color:'.$color.'; color:#222; border-bottom:1px solid #aaa; font-weight:bold;"><a target="_blank" href="completed_results.php?date='.$d.'&owner='.$n.'">'.$ag.'</a></td>';
					$ag_total[$n] += $ag;
				}
				
				echo '</tr>';
				
			}
		?>
        <tr>
            <td style="background-color:#333; color:white; font-weight:bold;"></td>
            <td style="background-color:#333; color:white; font-weight:bold;">TOTAL</td>
			
            <?php foreach($a as $n=>$ag){
				echo '<td style="background-color:#333; color:white; font-weight:bold;">'.$ag_total[$n].'</td>';
			}
            ?>
		</tr>
		
        <?php
			echo '</table><br><br>';
			
		?>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
