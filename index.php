<?php
session_start();
    // Set the time period for the request limit (in seconds)
    $timePeriod = 60;

    // Set the maximum number of requests allowed within the time period
    $requestLimit = 50;

    // Check if a session variable for tracking requests has been set
    if (!isset($_SESSION['request_count'])) {
        // If not, set the session variable and set the time it was set
        $_SESSION['request_count'] = 1;
        $_SESSION['request_time'] = time();
    } else {
        // If the session variable has been set, check if the time period has expired
        $elapsedTime = time() - $_SESSION['request_time'];
        if ($elapsedTime > $timePeriod) {
            // If the time period has expired, reset the session variables
            $_SESSION['request_count'] = 1;
            $_SESSION['request_time'] = time();
        } else {
            // If the time period has not expired, increment the request count
            $_SESSION['request_count']++;
        }
    }

    // Check if the request count has exceeded the limit
    if ($_SESSION['request_count'] > $requestLimit) {
        // If the request limit has been exceeded, return an error message or redirect the user
        echo "Error: You have exceeded the maximum number of requests allowed in this time period.";
        exit;
    }
	?>
<?php include('./Common/header.php') ?>
	<main>
		<article>
			<section class="section hero has-bg-image" id="home"
				aria-label="home"
				style="background-image: url('./Assets/images/hero-bg.svg')">
				<div class="container">

					<div class="hero-content">

						<h1 class="h1 section-title"><?=$lang['index-title1'];?></h1>
						<p class="hero-text"><?=$lang['index-title2'];?></p>

						<a href="./login/" class="btn has-before"> <span class="span"><?=$lang['Login'];?></span>
							<ion-icon name="arrow-forward-outline" aria-hidden="true"></ion-icon>
						</a>

					</div>

					<figure class="hero-banner">

						<div class="img-holder one" style="-width: 270;  -height: 300;">
							<img src="./Assets/images/hero-banner-1.jpg" width="270"
								height="300" alt="hero banner" class="img-cover">
						</div>

						<div class="img-holder two" style="-width: 240;  -height: 370;">
							<img src="./Assets/images/hero-banner-2.jpg" width="240"
								height="370" alt="hero banner" class="img-cover">
						</div>
                        
						

					</figure>

				</div>
			</section>
			<?php include './Common/about.php' ?>
			<div></div>

          <?php include './Common/cards.php' ?>	
		  <?php include './Common/news.php' ?>	
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
      // Include the 'honor.php' file
      include './Common/honor.php';
    }
  }
?>
<?php
  // Include the database connection file
  require_once "./Connection/connectionpdo.php";

  // Define variables for use in the query
  $SETTING_NAME = "projects";
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
      // Include the 'honor.php' file
      include './Common/projects.php';
    }
  }
?>


		</article>
	</main>
  <?php include('./Common/footer.php') ?>


