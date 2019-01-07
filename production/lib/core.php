<?php

function base_url() {
    // $url = 'http://' . $_SERVER['SERVER_NAME'];
	// if(strpos($url,'www.') !== false){
	// 	return "http://www.bigfans.io/pacc.go.th/sandbox";
	// } else {
	// 	return "http://bigfans.io/pacc.go.th/sandbox";
	// }
	return "http://localhost/vanlop/projcets/raimonland/survey.raimonland.com/production";

}

function dpm_url($dpm){
	// if($dpm != "pacc"){
	// 	return "http://www.bigfans.io/pacc.go.th/sandbox/".$dpm;
	// } else {
	// 	return "http://www.bigfans.io/pacc.go.th/sandbox";
	// }
	if($dpm != "pacc"){
		return "http://localhost/Vanlop/projcets/pacc.go.th/production/".$dpm;
	} else {
		return "http://localhost/Vanlop/projcets/pacc.go.th/production";
	}
}

function base_path() {
    return $_SERVER['DOCUMENT_ROOT'];
}

function salt_pass($pass) {
    return md5("rmluser" . $pass);
}

function permalink_create($oldstring){
	$string_to_replace     = array ('+' , '/' , '*' , '!' , '(' , ')' , '&' , '%' , '$' , '#' , '@' , '>' , '<' , '?' , ' ', '"', "'");
	$string_after_replace  = array ('-' , '-' , '-' , '-' , '-' , '-' , '-' , '-percent-' , '-' , '-' , '-' , '-' , '-' , '-' , '-', '-', '-');
	return $newstring         = str_replace($string_to_replace , $string_after_replace , $oldstring , $count); 
}

function dpm_code($codename){
	$dpm_id = "";
	switch($codename){
		case"pacc": 
			$dpm_id = "1200";
		break;
		case"strategy": 
			$dpm_id = "1205";
		break;
		case"sector1": 
			$dpm_id = "1206";
		break;
		case"sector2": 
			$dpm_id = "1207";
		break;
		case"sector3": 
			$dpm_id = "1208";
		break;
		case"sector4": 
			$dpm_id = "1209";
		break;
		case"sector5": 
			$dpm_id = "1210";
		break;
		case"area1": 
			$dpm_id = "1211";
		break;
		case"area2": 
			$dpm_id = "1212";
		break;
		case"area3": 
			$dpm_id = "1213";
		break;
		case"area4": 
			$dpm_id = "1214";
		break;
		case"area5": 
			$dpm_id = "1215";
		break;
		case"area6": 
			$dpm_id = "1216";
		break;
		case"area7": 
			$dpm_id = "1217";
		break;
		case"area8": 
			$dpm_id = "1218";
		break;
		case"area9": 
			$dpm_id = "1219";
		break;
		case"pap": 
			$dpm_id = "1204";
		break;
		case"cnac": 
			$dpm_id = "1230";
		break;
	}
	return $dpm_id;
}

function lang_path(){
	
	$languages = array('th', 'en');
	$lang = isset($_GET['lang']) ? $_GET['lang'] : "th";
	// handle language selection
	if(in_array($lang, $languages)) {
		return $_SESSION['lang'] = $lang;
	}
	
	// define LANG constant only if it exists in $languages array, otherwise default to "th"
	return isset($_SESSION['lang'], $languages) ? $_SESSION['lang'] : 'th';
}

function translate($text){
	$db = new database();
	$option_translate = array(
			"table" => "bt_translate",
			"condition" => "translate_th='{$text}' or translate_en='{$text}'"
			);
	$query_translate = $db->select($option_translate);
	$rs_ts = $db->get($query_translate);
	if($rs_ts['translate_'.$_SESSION['lang']] == ""){ 
		return $text;
	} else {
		return $rs_ts['translate_'.$_SESSION['lang']];
	}
}

function switch_lg($text)
{
	$url = isset($_GET['url']) ? "/".$_GET['url'] : "";
	$page = isset($_GET['page']) ? "/".$_GET['page'] : "";
	$a = isset($_GET['a']) ? "/".$_GET['a'] : "";
	$dpm = isset($_GET['dpm']) ? "/".$_GET['dpm'] : "";
	$id = isset($_GET['id']) ? "/".$_GET['id'] : "";
	if($_GET['url'] == "home"){
		return base_url().$dpm."/".$text;
	} else {
		return base_url().$dpm."/".$text.$url.$a.$page.$id;
	}
}

function userAdmin($userID){
	// Query about section
	$db = new database();
	$option_user = array(
		"table" => "bt_user",
		"condition" => "id = '{$userID}'"
		);
	$query_user= $db->select($option_user);
	$rs_user = $db->get($query_user);
	$fullname = $rs_user['firstnameTH']." ".$rs_user['lastnameTH'];
	return $fullname;
}