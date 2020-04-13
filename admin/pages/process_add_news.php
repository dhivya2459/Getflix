<?php
    include('../../config.php');
    extract($_POST);
       $uploaddir = '../theatre/images/';
      $uploadfile = $uploaddir . basename($_FILES['attachment']['name']);
    move_uploaded_file($_FILES['attachment']['tmp_name'],$uploadfile);
    $flname="images/".basename($_FILES["attachment"]["name"]);
    mysqli_query($con,"insert into  tbl_news values(NULL,'$name','$cast','$date','$description','$flname')");
    $_SESSION['add']=1;
    header('location:add_movie_news.php');
?>