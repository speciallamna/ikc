<?php include('./Common/common-header.php') ;?>
<section class="section blog has-bg-image" id="blog"
				aria-label="blog"
				style="background-image: url('./Assets/images/blog-bg.svg')">
				<div class="container">
					<h2 class="h2 section-title"><?=$lang['All News'];?></h2>
					<ul class="grid-list">
				<?php
	            include "./Connection/connection.php";

				$stmt = mysqli_prepare($con, "SELECT * from news ORDER BY ID DESC");
				mysqli_stmt_execute($stmt);
				
				$result = mysqli_stmt_get_result($stmt);
				
				while($row = mysqli_fetch_array($result))
				{
					$News_user = $row['post_user'];
					$News_title = $row['post_title'];
					$News_title_ar = $row['post_title_ar'];
					$News_date = $row['post_date'];
					$News_img = $row['post_img'];
	?>
<li>
<div class="blog-card">
								<figure class="card-banner img-holder1 has-after"
									style="-width: 370;  -height: 370;">
									<img src="./News-img/<?php echo $News_img; ?>" width="370" height="370"
										loading="lazy" alt=""
										class="img-cover">
								</figure>
								<div class="card-content">
								<a href="news_load.php?news_id=<?= $row['ID'] ?>" class="card-btn" aria-label="read more">
                    <ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
                  </a>
									<h5 class="h5">
										<a  class="card-title"><?php echo $News_date; ?></a>
									</h5>
									<?php if($_SESSION['lang'] == 'En'){ ?>
									<h4 class="h4">
										<a href="#" class="card-title"><?php echo $News_title; ?></a>
									</h4>
									<?php }else{ ?>
										<h4 class="h4">
										<a href="#" class="card-title"><?php echo $News_title_ar; ?></a>
									</h4>
										<?php } ?>
									<p class="card-text"></p>
								</div>
							</div>
						</li>
	<?php
	}
?>
                </ul>
					<img src="./Assets/images/blog-shape.png" width="186" height="186"
						loading="lazy" alt="" class="shape blog-shape">
						
				</div>
			</section>
			<?php include('./Common/footer.php') ?>