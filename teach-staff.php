<?php include('./Common/common-header.php') ;?>
<body>
	<main>
	<section class="section course" id="courses" aria-label="course">
				<div class="container">
					<br><h2 class="h2 section-title"><?=$lang['Teaching Staffs'];?></h2>
					<ul class="grid-list">
<?php

// set the number of records to display per page
$records_per_page = 21;
require_once "./Connection/connectionpdo.php";
    $stmt = $connection->prepare("SELECT COUNT(*) as total FROM login_teacher");
    $stmt->execute();
    $row = $stmt->fetch();
// calculate the total number of pages needed
$total_records = $row['total'];
$num_pages = ceil($total_records / $records_per_page);

// get the current page number
if (isset($_GET['page'])) {
  $page = $_GET['page'];
} else {
  $page = 1;
}

// calculate the offset for the query
$offset = ($page - 1) * $records_per_page;

// retrieve the records for the current page

require_once "./Connection/connectionpdo.php";
    $stmt = $connection->prepare("SELECT teacher_name,teacher_name_ar,teacher_username FROM login_teacher LIMIT $records_per_page OFFSET $offset");
    $stmt->execute();
    $result = $stmt->fetchAll();

foreach ($result as $row) {
    $staff_name = $row['teacher_name'];
    $user = $row['teacher_username'];
    $staff_name_ar = $row['teacher_name_ar'];
    $stmt2 = $connection->prepare("SELECT photo,academic_title FROM teacher_info WHERE teacher_username = :user");
    $stmt2->bindParam(':user', $user, PDO::PARAM_STR);
    $stmt2->execute();
    $row2 = $stmt2->fetch();
    $img_src = $row2['photo'];
	$academic_title = $row2['academic_title'];
	$stmt3 = $connection->prepare("SELECT * FROM academic_title WHERE title = :title");
    $stmt3->bindParam(':title', $academic_title, PDO::PARAM_STR);
    $stmt3->execute();
    $row3 = $stmt3->fetch();
	$title_en = $row3['title'];
	$title_ar = $row3['title_ar'];
  // process the record data

  if ($_SESSION['lang'] == 'En') {  ?>
    <li>
							<div class="course-card">
								<figure class="card-banner img-holder1">
									<img src="./Tch-img/<?php echo $img_src; ?>" loading="lazy"
										alt="<?php echo $staff_name; ?>"
										class="img-cover">
								</figure>
								<div class="card-content">
									<h3 class="h3">
										<a href="./staff-info.php?staff.user=<?= $user ?>" class="card-title"><?php echo $staff_name; ?> </a>
									</h3>
									<small><?= $title_en ?></small>
									<div class="wrapper"></div>
									<ul class="card-meta-list"></ul>
				</div>
				</div>
				</li>
 <?php } else { ?>
    <li>
							<div class="course-card">
								<figure class="card-banner img-holder1">
									<img src="./Tch-img/<?php echo $img_src; ?>" loading="lazy"
										alt="<?php echo $staff_name_ar; ?>"
										class="img-cover">
								</figure>
								<div class="card-content">
									<h3 class="h3">
										<a href="./staff-info.php?staff.user=<?= $user ?>" class="card-title"><?php echo $staff_name_ar; ?> </a>
									</h3>
									<small><?= $title_ar ?></small>
									<div class="wrapper"></div>
									<ul class="card-meta-list"></ul>
				</div>
				</div>
				</li>
				
 <?php }
}

?>

</ul>
				</div>
				<style>.pagination {
  display: flex;
  justify-content: center;
  align-items: center;
}

.pagination a {
  display: inline-block;
  padding: 8px 16px;
  margin: 0 4px;
  border: 1px solid #ddd;
  text-decoration: none;
  color: #666;
  transition: background-color 0.3s;
}

.pagination a:hover,
.pagination a.active {
  background-color: #4caf50;
  color: #fff;
}
</style>
				<div class="pagination">
<?php for ($i = 1; $i <= $num_pages; $i++) { ?>
  <a href="?page=<?= $i ?>"><?= $i ?></a> 
<?php } ?>
</div>
			</section>
	</main>
</body>
  <?php include('./Common/footer.php') ?>


