<?php
    session_start();
    include('../../config.php');
    extract($_POST);
    
    $target_dir = "../theatre/images/";
    $target_file = $target_dir . basename($_FILES['image']['name']);
    
    move_uploaded_file($_FILES['image']['tmp_name'], $target_file);
    
    $flname="images/".basename($_FILES["image"]["name"]);

    
  mysqli_query($con,"insert into  tbl_movie(movie_id,t_id,movie_name,mov_date,mov_lang,mov_dur,mov_dir,mov_pro,mov_mus,mov_cam,mov_edi,mov_bo,mov_bud,mov_des,mov_genre,mov_actors,mov_images,mov_trailer,mov_online,mov_download,status)values(77,1,'Asuran','2019-10-05','Hindi','Bollywood','02:18:00','Sriram Raghavan','Viacom 18 Motion Pictures','Amit Trivedi','K. U. Mohanaa','Pooja Ladha Surti',63894720,11209600,'The teenage son of a farmer from an underprivileged caste kills a rich, upper caste landlord. Will the farmer, a loving father and a pacifist by heart, be able to save his hot-blooded son is the rest of the story','Crime,Thriller','Dhanush, Manju Warrier','images/73.jpg','https://www.youtube.com/watch?v=vOCM9wztBYQ','http://www.tamildbox.top/watch/Asuran','http://tamilrockers.ws/index.php/topic/120148-asuran-2019-tamil-720p-hq-pre-dvdrip-x264-14gb-original-audio/',0),");

    $_SESSION['success']="Movie Added";
    header('location:add_movie.php');
?>