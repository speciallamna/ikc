<?php include('./Common/common-header.php') ;?>
<?php if (isset($_GET['staff_user'])) {
    $user = $_GET['staff_user'];
	require_once "./Connection/connectionpdo.php";
	$stmt = $connection->prepare("SELECT teacher_name,teacher_name_ar,teacher_username FROM login_teacher WHERE teacher_username = :user");
	$stmt->bindParam(':user', $user, PDO::PARAM_STR);
	$stmt->execute();
	
while ($row = $stmt->fetch()) {
    $staff_name = $row['teacher_name'];
    $staff_name_ar = $row['teacher_name_ar'];
    require_once "./Connection/connectionpdo.php";
    $stmt2 = $connection->prepare("SELECT photo,academic_title,teach_cv FROM teacher_info WHERE teacher_username = :user");
    $stmt2->bindParam(':user', $user, PDO::PARAM_STR);
    $stmt2->execute();
    $row2 = $stmt2->fetch();
    $img_src = $row2['photo'];
	$academic_title = $row2['academic_title'];
	$teach_cv = $row2['teach_cv'];
	$stmt4 = $connection->prepare("SELECT * FROM academic_title WHERE title = :title");
    $stmt4->bindParam(':title', $academic_title, PDO::PARAM_STR);
    $stmt4->execute();
    $row4 = $stmt4->fetch();
	$title_ar = $row4['title_ar'];
}
    if ($_SESSION['lang'] == 'En') {
        ?>
<section class="section blog has-bg-image center" 
				aria-label="blog"
				style="background-image: url('./Assets/images/blog-bg.svg')">
				<div class="container center">
								<figure class="center" >
									<img src="./Tch-img/<?php echo $img_src;  ?>"
										loading="lazy" alt=""
										class="img-cover2">
								</figure><br><br>
								<div>
								<h2 class="h2">
										<a href="#" class="card-title"><?php echo $staff_name; ?></a>
									</h2><p><?= $academic_title ?></p><br>
									<h5 class="h5">
										<a href="#" class="card-title"></a>
									</h5><br>
									<?php if(!empty($teach_cv)){ ?>
									<object data="./Tch-cv/<?php echo $teach_cv; ?>" type="application/pdf" width="75%" height="500px">
  <p>It looks like your browser doesn't support PDFs. You can <a href="./Tch-cv/<?php echo $teach_cv; ?>">download the PDF file here</a>.</p>
</object>

									<?php }else{?> 
										<p><?=$lang['Not Available'];?></p>
										<?php } ?>
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
									<img src="./Tch-img/<?php echo $img_src;  ?>"
										loading="lazy" alt=""
										class="img-cover2">
								</figure><br><br>
								<div>
								<h2 class="h2">
										<a href="#" class="card-title"><?php echo $staff_name_ar; ?></a>
									</h2><p>(<?= $title_ar ?>)</p><br>
									<h5 class="h5">
										<a href="#" class="card-title"></a>
									</h5><br>
									<?php if(!empty($teach_cv)){ ?>
									<object data="./Tch-cv/<?php echo $teach_cv; ?>" type="application/pdf" width="75%" height="500px">
  <p>It looks like your browser doesn't support PDFs. You can <a href="./Tch-cv/<?php echo $teach_cv; ?>">download the PDF file here</a>.</p>
</object>

									<?php }else{?> 
										<p><?=$lang['Not Available'];?></p>
										<?php } ?>
									<p class="card-text"><?php echo $staff_cv_ar; ?></p>
								</div>
								  </div>
					<img src="./Assets/images/blog-shape.png" width="186" height="186"
						loading="lazy" alt="" class="shape blog-shape">
						<?php } ?>

						<a href="./teach-staff.php" class="btn has-before"> <span class="span"><?=$lang['Back'];?></span> <ion-icon name="arrow-forward-outline"
						aria-hidden="true"></ion-icon>
				</a>
              
			</section>
			<?php } ?>
			<?php include('./Common/footer.php') ?>