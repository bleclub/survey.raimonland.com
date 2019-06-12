<?php
date_default_timezone_set("Asia/Bangkok"); 
session_start();
/*
 * include file start
 */
require 'lib/core.php';
require 'lib/cons.php';
require 'lib/database.php';
require 'lib/security.php';
// require 'lib/thaidate.php';


// $dpm = isset($_GET['dpm']) ? $_GET['dpm'] : "pacc";

$baseUrl = base_url();
// $dpmUrl = dpm_url($dpm);
$basePath = base_path();
// $dpmCode = dpm_code($dpm);
$lang = lang_path();


$onpage = isset($_GET['onpage']) ? $_GET['onpage'] : "back";
$url = isset($_GET['url']) ? $_GET['url'] : "home";
$a = isset($_GET['a']) ? $_GET['a'] : "index";

/*
 * logical programming
 */
if ($onpage == "back" AND $a != "login") {
    $security = new security();
    $security->check("admin");
}

if (file_exists("app/" . $onpage . "/" . $url . "/" . $a . ".php")) {
    require ("app/" . $onpage . "/" . $url . "/" . $a . ".php");
} else {
    header('location:' . $baseUrl);
}
