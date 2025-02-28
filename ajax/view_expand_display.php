<?php
// Include the header.php that handles the user session and initial HTML data
require_once '../config.php';

$query2 = "UPDATE thai_applications SET view_expand_display='".$_GET['status']."'  where application_id ='".$_GET['application_id']."' ";
$thai2 = mysqli_query($db, $query2);
?>