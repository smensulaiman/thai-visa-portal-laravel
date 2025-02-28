<?php
	require "vendor/autoload.php";
	define("DB_HOST", "localhost");
	define("DB_USER", "root");
	define("DB_NAME", "thai_visa");
	define("FQDN","sulaimansan.com");
	define("DB_PASSWORD", "");
	define("DOMAIN","https://".FQDN);
	define("ROOT_URL", "/thai-mvc");
	define("APP_NAME","Thai Visa");
	define("APP_VERSION",'v0.1.0');
	
	$db = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	
?>