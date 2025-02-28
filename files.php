<?php
	$current_page = 'all_files';
	
	// Include the header.php that handles the user session and initial HTML data
	require_once 'header.php';
	
	
	$query = "SELECT *, (SELECT count(person_id) FROM thai_applicants where thai_applicants.application_id = thai_applications.application_id) as qty from thai_applications where status='Pending' AND full_name!='' ";
	$thai = mysqli_query($db, $query);
	while($rs = mysqli_fetch_assoc($thai)){
		$query2 = "SELECT * from thai_applicants where application_id ='".$rs['application_id']."' ";
		$thai2 = mysqli_query($db, $query2);
		$applicants = array();
		while($rs2 = mysqli_fetch_assoc($thai2)){
			$applicants[] = $rs2;
		}
		$payment_links = array();
		$query3 = "SELECT * from thai_application_links where application_id ='".$rs['application_id']."' ";
		$thai3 = mysqli_query($db, $query3);
		while($rs3 = mysqli_fetch_assoc($thai3)){
			$payment_links[] = $rs3;
		}
		
		$rs['payment_links'] = $payment_links;
		$rs['applicants'] = $applicants;
		$rs['pdf_file'] = "https://senda.us/noman/uploads/".$rs['pdf_file'];
		$row[] = $rs;
		unset($payment_links);
		unset($applicants);
	}
	
	
	
	
?>
<div class="container-fluid">
	<h1 style="margin:0">All Application</h1>
	
	<table cellpadding="5" cellspacing="0" width="100%" style="font-family:calibri;">
		<tr>
			<td style="background-color:black; color:white; font-weight:bold;">No.</td>
			<td style="background-color:black; color:white; font-weight:bold;">Full Name</td>
			<td style="background-color:black; color:white; font-weight:bold;">Qty</td>
			<td style="background-color:black; color:white; font-weight:bold;">Email</td>
			<td style="background-color:black; color:white; font-weight:bold;">Phone</td>
			<td style="background-color:black; color:white; font-weight:bold;">Reference</td>
			<td style="background-color:black; color:white; font-weight:bold;">Owner</td>
			<td style="background-color:black; color:white; font-weight:bold;">File</td>
			<td style="background-color:black; color:white; font-weight:bold;">Payment Link</td>
			<td style="background-color:black; color:white; font-weight:bold;">Status</td>
		</tr>
		
		<?php
			foreach($row as $key=>$p){
				
				if($p['clicked']=="1"){
					$bgcolor="pink";
					}else{
					$bgcolor="#ddd";
				}
				
				
				echo '<tr>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.($key+1).'</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.$p['full_name']." (".$p['application_id'].')</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.$p['qty'].'</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.$p['email'].'</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.$p['phone'].'</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.$p['reference'].'</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">'.$p['agent'].'</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;"><a target="blank" href="'.$p['pdf_file'].'">View</td>';
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;">';
				
				
				if($p['payment_url']!=''){
					//echo '<a target="blank" href="'.$p['payment_url'].'">Payment Link</a>';
					}else{
					
					echo 'Pending';
					
				}
				
				
				if(count($p['payment_links'])>0){
					foreach($p['payment_links'] as $pay=>$l){
						echo '<a onclick="read_click('.$p['application_id'].');" target="blank" href="'.$l['payment_link'].'">Payment Link ('.date("h:i:s", strtotime($l['link_time'])).')</a><br>';
					}
				}
				
				
				
				echo '</td>';
				
				echo '<td style="background-color:'.$bgcolor.'; color:#222; font-weight:bold;"><a target="blank" href="thai_update_status.php?id='.$p['application_id'].'">Mark as Done</td>';
				
				
				echo '</tr>';
				
				
				
				
				
				echo '<tr>';
				echo '<td colspan="1"></td>';
				echo '<td colspan="5" >';
			?>
			
            <div id="show_btn_div_<?=$p['application_id']?>"  style="display:block;">
				<a style="color:blue; cursor:pointer;" onclick="view_details('<?=$p['application_id']?>');">+ View Details</a>
			</div>
            <div id="hide_btn_div_<?=$p['application_id']?>"  style="display:none;">
				<a style="color:blue; cursor:pointer;" onclick="hide_details('<?=$p['application_id']?>');">- Hide Details</a>
			</div>
			
			
            <div id="detail_div_<?=$p['application_id']?>" style="display:none;">
				
				<?php
					echo '<table cellpadding="0" cellspacing="0" width="100%" style="font-family:calibri; font-size:10px;">';
					echo '<tr height="15" style="background-color:#fff;">
					<td style="font-weight:bold; background-color:#eee;" width="3%">No.</td>
					<td style="font-weight:bold; background-color:#eee;" width="25%">Name</td>
					<td style="font-weight:bold; background-color:#eee;" width="10%">Doc No.</td>
					<td style="font-weight:bold; background-color:#eee;" width="10%">Nationality</td>
					<td style="font-weight:bold; background-color:#eee;" width="10%">Type</td>
					<td style="font-weight:bold; background-color:#eee;" align="right" width="10%">Amount</td>
					<td style="font-weight:bold; background-color:#eee;" width="10%">&nbsp;</td>
					</tr>';
					
					$file_amount = 0;
					foreach($p['applicants'] as $key2=>$a){
						echo '<tr height="10">
						<td>'.($key2+1).'</td>
						<td>'.$a['name'].'</td>
						<td>'.$a['doc_no'].'</td>
						<td>'.$a['nationality'].'</td>
						<td>'.$a['type'].'</td>
						<td align="right">'.number_format($a['amount'],2).'</td>
						<td></td>
						</tr>';
						$file_amount += $a['amount'];
					}
					echo '<tr height="10" bgcolor="#eee">
					<td></td>
					<td><b>Total</b></td>
					<td></td>
					<td></td>
					<td></td>
					<td align="right"><b>'.number_format($file_amount,2).'</b></td>
					<td></td>
					</tr>';
					echo '</table>
					
					</div>
					</td>';
					echo '<td></td>';
					echo '</tr><tr height="10"></tr>';
					
				}
				
				echo '</table>';
				
			?>
		</div>
		
		
		
		
		
		
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		
		<script>
			
			
			function read_click(application_id){
				$.ajax({url: "thai_read_status.php?application_id="+application_id, success: function(result){
				}});
			}
			
			setTimeout(function(){
				window.location.reload(1);
			}, 2000);
			
			
			function view_details(application_id){
				document.getElementById('detail_div_'+application_id).style.display = 'block';
				document.getElementById('show_btn_div_'+application_id).style.display = 'none';
				document.getElementById('hide_btn_div_'+application_id).style.display = 'block';
				$.ajax({url: "ajax/view_expand_display.php?status=1&application_id="+application_id});
			}
			
			function hide_details(application_id){
				document.getElementById('detail_div_'+application_id).style.display = 'none';
				document.getElementById('show_btn_div_'+application_id).style.display = 'block';
				document.getElementById('hide_btn_div_'+application_id).style.display = 'none';
				$.ajax({url: "ajax/view_expand_display.php?status=0&application_id="+application_id});
			}
			
			<?php
				foreach($row as $key=>$p){
					if($p['view_expand_display']==1){
					?>
					view_details('<?=$p['application_id']?>');
					<?php
					}
					
				}
			?>
			
		</script>
		
		