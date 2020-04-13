<?php
include('header.php');
?>
<link rel="stylesheet" href="../../validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="../../validation/dist/js/bootstrapValidator.js"></script>
  <!-- =============================================== -->
  <?php
    include('../../form.php');
    $frm=new formBuilder;      
  ?> 
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Movies
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Add Movie</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
        <div class="box-body">
          <?php include('../../msgbox.php');?>
          <form action="process_add_movie.php" method="post" enctype="multipart/form-data" id="form1">
            <div class="form-group">
              <label class="control-label">Movie Name</label>
              <input type="text" name="name" class="form-control"/>
              <?php $frm->validate("name",array("required","label"=>"Movie Name")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Cast</label>
              <input type="text" name="cast" class="form-control"/>
              <?php $frm->validate("cast",array("required","label"=>"Cast","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Description</label>
              <textarea name="desc" class="form-control"></textarea>
              <?php $frm->validate("desc",array("required","label"=>"Description")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">language</label>
              <input type="text" name="language" class="form-control"/>
              <?php $frm->validate("language",array("required","label"=>"language","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">duration</label>
              <input type="text" name="duration" class="form-control"/>
              <?php $frm->validate("duration",array("required","label"=>"duration","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">director</label>
              <input type="text" name="director" class="form-control"/>
              <?php $frm->validate("director",array("required","label"=>"director","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">producer</label>
              <input type="text" name="producer" class="form-control"/>
              <?php $frm->validate("producer",array("required","label"=>"producer","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">musician</label>
              <input type="text" name="musician" class="form-control"/>
              <?php $frm->validate("musician",array("required","label"=>"musician","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">cameraman</label>
              <input type="text" name="cameraman" class="form-control"/>
              <?php $frm->validate("cameraman",array("required","label"=>"cameraman","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">editor</label>
              <input type="text" name="editor" class="form-control"/>
              <?php $frm->validate("editor",array("required","label"=>"editor","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">boxoffice</label>
              <input type="text" name="boxoffice" class="form-control"/>
              <?php $frm->validate("boxoffice",array("required","label"=>"boxoffice","regexp"=>"number")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">budget</label>
              <input type="text" name="budget" class="form-control"/>
              <?php $frm->validate("budget",array("required","label"=>"budget","regexp"=>"number")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">genre</label>
              <input type="text" name="genre" class="form-control"/>
              <?php $frm->validate("genre",array("required","label"=>"genre","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">industry</label>
              <input type="text" name="industry" class="form-control"/>
              <?php $frm->validate("industry",array("required","label"=>"industry","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
        
            <div class="form-group">
              <label class="control-label">Release Date</label>
              <input type="date" name="rdate" class="form-control"/>
              <?php $frm->validate("rdate",array("required","label"=>"Release Date")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Image</label>
              <input type="file" name="image" class="form-control" placeholder="Image"/>
              <?php $frm->validate("image",array("required","label"=>"Image")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">video</label>
              <input type="text" name="video" class="form-control"/>
              <?php $frm->validate("video",array("label"=>"video","max"=>"500")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">video2</label>
              <input type="text" name="video2" class="form-control"/>
              <?php $frm->validate("video2",array("label"=>"video2","max"=>"500")); // Validating form using form builder written in form.php ?>
            </div>
             <div class="form-group">
              <label class="control-label">video3</label>
              <input type="text" name="video3" class="form-control"/>
              <?php $frm->validate("video3",array("label"=>"video3","max"=>"500")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-success">Add Movie</button>
            </div>
          </form>
        </div> 
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <?php
include('footer.php');
?>
<script>
        <?php $frm->applyvalidations("form1");?>
    </script>