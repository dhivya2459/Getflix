<?php include('header.php');?>
</div>
<div class="content">
	<div >
		<div class="content-top">
			<h3 align="center">Movies</h3>
			
			<?php
          	 $today=date("Y-m-d");
          	 $qry2=mysqli_query($con,"select * from  tbl_movie ");
		
          	  while($m=mysqli_fetch_array($qry2))
                   {
                    ?>
                    
                    <div align="center">
					<div class="imageRow">
						  	<div class="single">
						  		<?php
						
						?>
						  		<a href="about.php?id=<?php echo $m['movie_id'];?>"><img src="<?php echo $m['mov_images'];?>" alt="" /></a>
						  	</div>
						  	<div class="movie-text">
						  		<h4 class="h-text"><a href="about.php?id=<?php echo $m['movie_id'];?>"><?php echo $m['movie_name'];?></a></h4>
						  		Cast:<Span class="color2"><?php echo $m['mov_actors'];?></span><br>
						  		Description:<Span class="color2"><?php echo $m['mov_des'];?></span><br>	
						  		
						  	</div>
		  				</div>
		  		</div>
		  		
  	    <?php
  	    	}
  	    	?>
			
			</div>
				<div class="clear"></div>		
			</div>
			<?php include('footer.php');?>