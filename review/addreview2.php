<?php

$page_title = " Add Review";
require_once ('includes/header.php');
require_once('includes/database.php');


$movie_id = $_GET['id'];

?>

	<div class="container wrapper">

		<ul class="breadcrumb">
			<li><a href="index.php">Home</a></li>
			<li><a href="movies.php">Movies</a></li>
			<li class="active">Adding Reviews</li>
		</ul>
	
		<h1 class="text-center">Add Tomato Reviews</h1>
	
		<div class="row">
			<div class="col-xs-6 col-xs-offset-2">
				<form action="createreview.php" method="get" class="form-horizontal" role="form">
					<input type="hidden" name="movie_id" value="<?php echo $movie_id; ?>"/>
					<div class="form-group">
						<label class="col-sm-3 control-label text-right" for="addRating">Add Rating</label>
						<div class="col-sm-9">
							<select class="form-control"name="review_rating" id="addkappa" required>
								<option name="4.8" value="0.1">0-10%</option>
								<option name="2.43" value="0.2">11-20%</option>
								<option name="1.6" value="0.3">21-30%</option>
								<option name="1.2" value="0.4">31-40%</option>
								<option name="0.97" value="0.5">41-50%</option>
								<option name="0.81" value="0.6">51-60%</option>
								<option name="0.69" value="0.7">61-70%</option>
								<option name="0.61" value="0.8">71-80%</option>
								<option name="0.54" value="0.9">81-90%</option>
								<option name="0.48" value="1">91-100%</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label text-right" for="movieSearch">Review Text</label>
						<div class="col-sm-9">
							<textarea name="review_content" placeholder="Write Review" id="addReview" class="form-control"></textarea>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-3">
						<button type="submit" class="btn btn-primary">Add!</button>
					</div>
				</form>
			</div>
		</div>
		
	</div>

<?php

// close the connection.
$conn->close();
include_once('includes/footer.php');