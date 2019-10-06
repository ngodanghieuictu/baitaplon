<?php
	require 'connect.php';
	
	if(isset($_GET['category_id'])){
		$a = $_GET['category_id'];
		$query = "SELECT * FROM product WHERE category_id='$a' AND product_qty!=0";
	}else if(isset($_GET['product_id'])){
		$a = $_GET['product_id'];
		$query = "SELECT * FROM product WHERE product_id='$a' AND product_qty!=0";
	}
	 else{
		$query = "SELECT * FROM product";
	}

	$data = mysqli_query($connect,$query);


	class Product{
		function Product($id,$name,$size,$image,$color,$des,$content,$qty,$price,$thuonghieu,$kho,$chatlieu,$phongcach,$noigui,$loai){
			$this->id     =$id;
			$this->name   =$name;
			$this->size   =$size;
			$this->image  =$image;
			$this->color  =$color;
			$this->des	  =$des;
			$this->content=$content;
			$this->qty	  =$qty;
			$this->price  =$price;
			$this->thuonghieu  =$thuonghieu;
			$this->kho  =$kho;
			$this->chatlieu  =$chatlieu;
			$this->phongcach  =$phongcach;
			$this->noigui  =$noigui;
			$this->loai  =$loai;
		}
	}
	$mang_pr = array();

	while($row =mysqli_fetch_assoc($data)){
		array_push($mang_pr, new Product($row['product_id'],$row['product_name'],$row['product_size'],$row['product_image'],$row['product_color'],$row['product_des'],$row['product_content'],$row['product_qty'],$row['product_price'],$row['thuonghieu'],
			$row['kho'],$row['chatlieu'],$row['phongcach'],$row['noigui'],
			$row['loai']));
	}
			
	echo json_encode($mang_pr);

?>