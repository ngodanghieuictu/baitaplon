<?php
	require 'connect.php';
	
	$data = mysqli_query($connect,"SELECT * FROM category");
	
	class Category{
		function Category($id,$name,$image){
			$this->id = $id;
			$this->name = $name;
			$this->image = $image;
			
		}
	}
	$mang_category = array();

	while($row =mysqli_fetch_assoc($data)){
		array_push($mang_category, new Category($row['category_id'],$row['category_name'],$row['category_image']));
	}
			
	echo json_encode($mang_category);
?>