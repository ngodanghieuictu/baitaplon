<?php
	require 'connect.php';
	 $name_user = $_GET['name'];
	 $pass_user = $_GET['pass'];

	$query = "SELECT * FROM user WHERE user_name='$name_user' AND user_pass='$pass_user'";
	$data = mysqli_query($connect,$query);

	class user{
		function user($id,$tdn,$mk,$level,$ht,$sdt){
			$this->ID    =$id;
			$this->TDN  =$tdn;
			$this->MK 	  =$mk;
			$this->LEVEL =$level;
			$this->HT	  =$ht;
			$this->SDT	  =$sdt;
			
		}
	}
	$mang_user = array();

	while($row =mysqli_fetch_assoc($data)){
		array_push($mang_user, new user($row['user_id'],$row['user_name'],$row['user_pass'],$row['user_level'],$row['user_full_name'],$row['user_phone']));
	}
		
	if(count($mang_user) > 0){
		echo '{"status": 1,
			"data":
		'.json_encode($mang_user).'}';
	}else{
		echo '{"status": 0}';
	}		
	

?>