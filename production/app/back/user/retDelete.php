<?php
/*
 * php code///////////**********************************************************
 */
$db = new database();

// $option_im = array(
// 	"table" => "bt_user",
// 	"fields" => "profilePicture, firstnameTH, lastnameTH",
// 	"condition" => "id='{$_GET['id']}'"
// );
// $query_im = $db->select($option_im);
// $rs_im = $db->get($query_im);
// $fullname = $rs_im['firstnameTH']." ".$rs_im['lastnameTH'];
// $path = "./upload/profile/";

// Check profile picture standard?
// if($rs_im['profilePicture'] != "profile-cms.jpg") {
// 	@unlink($path . $rs_im['profilePicture']);
// }

// $query = $db->delete("bt_user", "id='{$_GET['id']}'");


$value_pd = array(
	"status" => 'disable',
	"userType" => 'user',
	"username" => '',
	"password" => ''
);
$query_pd = $db->update("bt_user", $value_pd, "id='{$_GET['id']}'");

if($query_pd == TRUE){
		/*Log file*/
		$value_log = array(
			"log_type" => 'User',
			"log_typeID" => $_GET['id'],
			"log_detail" => 'ลบคุณ '.$fullname.' ออกจากระบบ',
			"log_date" => date('Y-m-d H:i:s'),
			"log_ip" => $_SERVER["REMOTE_ADDR"],
			"log_user" => $_SESSION[_ss . 'username'] ,
			"log_user_id" => $_SESSION[_ss . 'id']
		);
		$query_log = $db->insert("bt_loginfo", $value_log); 
		$_SESSION[_ss . 'msg_result'] = "delete";
    header("location:" . $baseUrl . "/back/user");
}else{
    echo "error";
}
mysql_close();