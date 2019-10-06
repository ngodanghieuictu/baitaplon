<?php

require 'connect.php';
$data=mysqli_query($connect,"SELECT Max(order_id) as id FROM order_pro");
	$mang=[];
	while ($row=mysqli_fetch_assoc($data)) {
	 	$mang[]=$row;
	 } 
	 $id_hoadon= $mang[0]['id']+1;

	$entityBody = file_get_contents('php://input');
// echo $entityBody;
$total=0;
	// $data ='{"username":{"_40":0,"_65":1,"_55":"[{\"ID\":\"1\",\"TDN\":\"ngodanghieu\",\"MK\":\"ngodanghieu\",\"LEVEL\":\"1\",\"HT\":\"Ngô Đăng Hiếu\",\"SDT\":\"962541617\"}]","_72":null},"password":{"id":"3","name":"Áo cộc nam","size":"XL","image":"/image/aococ.jpg","color":"Vàng","des":"Việt Nam","content":"Áo vải trơn, thoáng mát","qty":2,"price":"250"}}';
	$dataTong =json_decode($entityBody,true);
	$index =0;
	foreach ($dataTong as $key => $value) {
		if($index ==0){
			$index =1;
			$user= $value;
		}else if($index == 1){
			$data = $value;
			$index =2;
		}else{
         $total =$value;
         echo "dang hieu".$total;
		}
	}
	// $data_hoadon = $_POST['orderData'];
	// $data_user = $_POST['userdata'];
	// $data_hoadon = '{"id":"3","name":"Áo cộc nam","size":"XL","image":"/image/aococ.jpg","color":"Vàng","des":"Việt Nam","content":"Áo vải trơn, thoáng mát","qty":8,"price":"250"}';
	// $data_user = '{"_40":0,"_65":1,"_55":"[{\"ID\":\"1\",\"TDN\":\"ngodanghieu\",\"MK\":\"ngodanghieu\",\"LEVEL\":\"1\",\"HT\":\"Ngô Đăng Hiếu\",\"SDT\":\"962541617\"}]","_72":null}';
	$DATE=date("Y-m-d");
	// $user=json_decode($data_user,true) ;
	// $data=json_decode($data_hoadon,true) ;
	$tong =0;
	$dk =0;
	$user_info;
	foreach ($user as $key => $value) {
		$dk++;
	$user_info=json_decode($value,true) ;
	  if($dk ==3){
	  	break;
	  }
	}
	$e =0;
	$f =0;
	foreach ($data as $key) {
		mysqli_query($connect,"INSERT INTO order_dep_pro(order_id,order_dep_qty,product_id) VALUES('".($mang[0]['id']+1)."','".$key['qty']."','".$key['id']."')");
		$tong+=$key['qty']*$key['price'];
		
	$ktra=mysqli_query($connect,"INSERT INTO order_pro(user_id,order_create_date,order_total) VALUES('".$user_info[0]['ID']."','".$DATE."','".$total."')");

	if($ktra){
		echo"success";
	}else{
		echo"error";
	}
		break;
	}




?>