<?php
  // Include the database connection file
  require_once "./Connection/connectionpdo.php";

  // Define variables for use in the query
  $SETTING_NAME = "honor";
  $SETTING_SET = "yes";

  // Prepare the SQL statement
  $stmt = $connection->prepare('SELECT * FROM setting WHERE set_name = :honor_name');

  // Bind the placeholder to the value of the SETTING_NAME variable
  $stmt->bindParam(':honor_name', $SETTING_NAME);

  // Execute the query
  $stmt->execute();

  // Fetch the results of the query
  $set = $stmt->fetchAll();

  // Loop through the results
  foreach ($set as $sets) {
    // Store the value of the 'set' column in a variable
    $honor_set = $sets['set'];

    // If the value of the 'set' column is equal to the SETTING_SET variable
if ($honor_set == $SETTING_SET) {

    ?>
<?php include('./Common/common-header.php') ;?>
<body>
	<main>
		<section class="section course" >
			<div class="container">
				<h2 class="h2 section-title"><?=$lang['Honor Board'];?></h2><hr>
				<h3 class="h3 section-title"><?=$lang['First Stage'];?> - <?=$lang['Morning Study'];?></h3>
				<ul class="grid-list">
				<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(1, 3);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br>
				<h3 class="h3 section-title"><?=$lang['First Stage'];?> - <?=$lang['Evening Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(4, 6);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br><hr><br>
				<h3 class="h3 section-title"><?=$lang['Second Stage'];?> - <?=$lang['Morning Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(7, 9);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br>
				<h3 class="h3 section-title"><?=$lang['Second Stage'];?> - <?=$lang['Evening Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(10, 12);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div> 
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br><hr><br>
				<h3 class="h3 section-title"><?=$lang['Third Stage'];?> - <?=$lang['Morning Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(13, 15);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br>
				<h3 class="h3 section-title"><?=$lang['Third Stage'];?> - <?=$lang['Evening Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(16, 18);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br><hr><br>
				<h3 class="h3 section-title"><?=$lang['Forth Stage'];?> - <?=$lang['Morning Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(19, 21);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul><br>
				<h3 class="h3 section-title"><?=$lang['Forth Stage'];?> - <?=$lang['Evening Study'];?></h3>
				<ul class="grid-list">
<?php
      require_once "./Connection/connectionpdo.php";

    // create an array of IDs to select
    $ids = range(22, 24);

    // loop through the IDs and select every 3 IDs
    for ($i = 0; $i < count($ids); $i += 1) {
        $selectedIds = array_slice($ids, $i, 3);

        // use IN clause to select rows with specified IDs
        $stmt = $connection->prepare("SELECT * FROM honor WHERE ID IN (:ids)");
        $stmt->bindParam(':ids', implode(',', $selectedIds));
        $stmt->execute();
        ?>
      <div class="row">
        <?php
            while ($row = $stmt->fetch()) {
                $data['name'] = $row['name'];
                $data['name_ar'] = $row['name_ar'];
                $data['photo'] = $row['photo'];
                $data['year'] = $row['year'];
                $data['gpa'] = $row['gpa'];
                $data['class'] = $row['class'];
                $data['type'] = $row['study_type'];

                $h_name = $data['name'];
                $h_name_ar = $data['name_ar'];
                $h_photo = $data['photo'];
                $h_year = $data['year'];
                $h_gpa = $data['gpa'];
                $h_class = $data['class'];
                $h_type = $data['type'];
                ?>
            <div class="col-md-4">
              <div class="course-card">
                <figure class="card-banner img-holder1">
                  <img src="./Stu-img/honor/<?php echo $h_photo; ?>" width="370"
                       height="220" loading="lazy"
                       alt="<?php echo $h_photo; ?>"
                       class="img-cover">
                </figure>
                <div class="card-content center">
                  <h3 class="h3">
                    <a class="card-title"><?php if($_SESSION['lang']== 'En'){
    echo  "$h_name";
     }elseif($_SESSION['lang']== 'Ar') {
      echo  "$h_name_ar";
     } ?> </a>
                  </h3>
                  <p><?php echo $h_gpa; ?></p>
                    <small><?php echo $h_year; ?></small>
                  <div class="wrapper"></div>
                  <ul class="card-meta-list"></ul>
                </div>
              </div>
            </div>
          <?php
            }
        ?>
      </div>
    <?php
    }
    ?>
				</ul>
				</div>
			</section>
	</main>
</body>
  <?php include('./Common/footer.php') ?>
<?php }
else
{
	header("Location: index.php");
	exit;
}

} ?>

