<?php

require_once __DIR__ . "/vendor/autoload.php";

const DB_HOST = "localhost";
const DB_USER = "root";
const DB_NAME = "auto_thai";
const FQDN = "sulaimansan.com";
const DB_PASSWORD = "";
const DOMAIN = "https://" . FQDN;
const ROOT_URL = "/thai-mvc";
const APP_NAME = "Thai Auto";
const APP_VERSION = 'v0.1.0';

$db = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
