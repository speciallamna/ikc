<?php include('./Common/common-header.php') ;?>
<?php
    require_once "./Connection/connectionpdo.php";
    
if (isset($_GET['news_id'])) {
    $news_id = $_GET['news_id'];

    $stmt = $connection->prepare("SELECT * from news where ID = ?");
    $stmt->bindParam(1, $news_id, PDO::PARAM_INT);
    $stmt->execute();
    $result = $stmt->fetchAll();

    foreach ($result as $row) {
        $News_user = $row['post_user'];
        $News_title = $row['post_title'];
		$News_title_ar = $row['post_title_ar'];
        $News_info = $row['post_info'];
		$News_info_ar = $row['post_info_ar'];
        $News_date = $row['post_date'];
        $News_img = $row['post_img'];
    }
    if ($_SESSION['lang'] == 'En') {
        ?>
<section class="section blog has-bg-image center" 
				aria-label="blog"
				style="background-image: url('./Assets/images/blog-bg.svg')">
				<div class="container center">
								<figure class="center" >
									<img src="./News-img/<?php echo $News_img;  ?>"
										loading="lazy" alt=""
										class="img-cover2">
								</figure><br><br>
								<div>
								<h2 class="h2">
										<a href="#" class="card-title"><?php echo $News_title; ?></a>
									</h2><br>
									<h5 class="h5">
										<a href="#" class="card-title"><?=$lang['By'];?> : <?php echo $News_user; ?>  |  <?php echo $News_date; ?></a>
									</h5><br>
									<h5 class="h5">
										<a href="#" class="card-title"></a>
									</h5><br>
									
									<p class="card-text"><?php echo $News_info; ?></p>
								</div>
								  </div>
					<img src="./Assets/images/blog-shape.png" width="186" height="186"
						loading="lazy" alt="" class="shape blog-shape">

						<?php  }else{ ?>

							<section class="section blog has-bg-image center" 
				aria-label="blog"
				style="background-image: url('./Assets/images/blog-bg.svg')">
				<div class="container center">
								<figure class="center" >
									<img src="./News-img/<?php echo $News_img;  ?>"
										loading="lazy" alt=""
										class="img-cover2">
								</figure><br><br>
								<div>
								<h2 class="h2">
										<a href="#" class="card-title"><?php echo $News_title_ar; ?></a>
									</h2><br>
									<h5 class="h5">
										<a href="#" class="card-title"><?=$lang['By'];?> : <?php echo $News_user; ?>  |  <?php echo $News_date; ?></a>
									</h5><br>
									<h5 class="h5">
										<a href="#" class="card-title"></a>
									</h5><br>
									
									<p class="card-text"><?php echo $News_info_ar; ?></p>
								</div>
								  </div>
					<img src="./Assets/images/blog-shape.png" width="186" height="186"
						loading="lazy" alt="" class="shape blog-shape">
						<?php } ?>

						<a href="./all-news.php" class="btn has-before"> <span class="span"><?=$lang['Back'];?></span> <ion-icon name="arrow-forward-outline"
						aria-hidden="true"></ion-icon>
				</a>
              
			</section>
			<?php } ?>
			<?php include('./Common/footer.php') ?>