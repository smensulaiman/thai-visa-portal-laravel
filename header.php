<?php
	require "config.php";
	session_start();
	/**
		* Function that returns 'true' if the user is logged in 
		* @return bool
	*/
	function estaIngresado() {
		return isset($_SESSION['username']);
	}
	if (!estaIngresado()) {
		session_destroy();
		header("Location: login.php");
		exit;
	}
	/**
		* Function that shows if the current user is admin
		* @return bool
	*/
	function isAdmin() {
		return isset($_SESSION['user_role']) && $_SESSION['user_role'] === 'admin';
	}
?>
<!DOCTYPE html>
<html>
	<head>
		<title><?=APP_NAME?> | <?=APP_VERSION?></title>
		<meta charset="utf-8">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<!--     Fonts and icons     -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<!-- CSS Files -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
	</head>
	<body>
		<?php require "sidebar.php"; ?>
		<div class="main-panel" id="main-panel">
				