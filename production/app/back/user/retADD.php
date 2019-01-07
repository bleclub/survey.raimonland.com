<?php

require "lib/uploadimg.php" ;


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $db = new database();
    if (checkimg() == TRUE) {
        $filename = date('YmdHis') . rand(0, 9);
        $type = end(explode(".", $_FILES["image"]["name"]));
        $image = $filename . "." . $type;
		
       /* if(!mkdir(base_path() . "/upload/profile/".date('Y-m-d'),0777)){ 
		
			mkdir( base_path() . "/upload/profile/".date('Y-m-d'));
		}*/
		$path = "./upload/profile/";
		uploadimg($filename, 400, 400, $path);
		
    } else {
        $image = "profile-cms.jpg";
	}

	
	//$pwd = trim(salt_pass($_POST['password']));
    $value_pd = array(
        "userID" => trim($_POST['userID']),
		"title_id" => trim($_POST['title']),
		"firstnameTH" => trim($_POST['firstnameTH']),
		"lastnameTH" => trim($_POST['lastnameTH']),
		"firstnameEN" => trim($_POST['firstnameEN']),
		"lastnameEN" => trim($_POST['lastnameEN']),
		//"username" => trim($_POST['username']),
		"paccEmail" => trim($_POST['paccEmail']),
		"personalEmail" => trim($_POST['personalEmail']),
		"officeID" => trim($_POST['officeID']),
		"groupID" => trim($_POST['groupID']),
		//"userType" => trim($_POST['userType']),
		"position" => trim($_POST['position']),
		"mobile" => trim($_POST['mobile']),
		"telephone" => trim($_POST['telephone']),
		//"password" => $pwd,
		"profilePicture" => $image,
        "createdate" => date('Y-m-d H:i:s')
    );
    $query_pd = $db->insert("bt_user", $value_pd);

    if ($query_pd == TRUE) {
		/*Log file*/
			$value_log = array(
				"log_type" => 'User',
				"log_typeID" => $db->insert_id(),
				"log_detail" => 'เพิ่มคุณ '.$_POST['firstnameTH'].' '.$_POST['lastnameTH'].' เข้าในระบบ',
				"log_date" => date('Y-m-d H:i:s'),
				"log_ip" => $_SERVER["REMOTE_ADDR"],
				"log_user" => $_SESSION[_ss . 'username'] ,
				"log_user_id" => $_SESSION[_ss . 'id']
			);
			$query_log = $db->insert("bt_loginfo", $value_log);
			$_SESSION[_ss . 'msg_result'] = "add"; 
        header("location:" . $baseUrl . "/back/user");
    }
    mysql_close();
}