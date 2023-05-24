<?php
		  require_once "./Connection/connectionpdo.php";
		  $bb="projects";
		  $stmt = $connection->prepare('SELECT * FROM setting WHERE set_name = :honor_name');
		  $stmt->bindParam(':honor_name', $bb);
		  $stmt->execute();
		  $set = $stmt->fetchAll();
foreach ($set as $sets) {
    $honor_set = $sets['set'];
    if ($honor_set == 'yes') {
        ?>
<?php include('./Common/common-header.php') ;?>
<body>
	<main>
	<section class="section course" id="courses" aria-label="course">
				<div class="container">
					<br><style>
  /* Define the style for the table */
  .custom-table {
    border-collapse: collapse;
    width: 100%;
  }

  /* Define the style for the table cells */
  .custom-table td, .custom-table th {
    border: 1px solid #ddd;
    padding: 8px;
  }

  /* Define the style for the table headings */
  .custom-table th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #016EBF;
    color: white;
  }

  /* Define the style for the table rows */
  .custom-table tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  @media only screen and (max-width: 600px) {
  /* Define the style for small screens */
  .custom-table {
    display: flex;
    flex-wrap: wrap;
  }
  .custom-table td, .custom-table th {
    flex: 0 0 50%;
    max-width: 50%;
  }
  .custom-table th {
    font-size: smaller;
    text-align: left;
  }
}
/* Set the width of the columns in the table */
th:nth-of-type(1), td:nth-of-type(1) { width: 20%; }
  th:nth-of-type(2), td:nth-of-type(2) { width: 45%; }
  th:nth-of-type(3), td:nth-of-type(3) { width: 20%; }
  th:nth-of-type(4), td:nth-of-type(4) { width: 15%; }

</style>

					<h2 class="h2 section-title"><?=$lang['Students Projects'];?></h2>
                    <?php
            if ($_SESSION['lang'] == 'En') {
                ?>
			
			<table class="custom-table">
  <thead>
    <tr>
      <th scope="col"><?=$lang['Student Name'];?></th>
      <th scope="col"><?=$lang['Project Name'];?></th>
      <th scope="col"><?=$lang['Supervisor Name'];?></th>
      <th scope="col"><?=$lang['Year'];?></th>
    </tr>
  </thead>
  <tbody>
    <?php
    require_once "./Connection/connectionpdo.php";

                // Set default page number
                $page = 1;
                if (isset($_GET['page']) && is_numeric($_GET['page'])) {
                    $page = (int)$_GET['page'];
                }

                // Set number of rows to display per page
                $rowsPerPage = 20;

                // Calculate starting row for current page
                $startingRow = ($page - 1) * $rowsPerPage;

                // Prepare SELECT statement to count total number of rows
                $countQuery = "SELECT COUNT(*) as count FROM `students_projects`";
                $countStmt = $connection->prepare($countQuery);

                // Execute statement
                $countStmt->execute();

                // Fetch row from result set
                $row = $countStmt->fetch();
                $totalRows = $row['count'];

                // Calculate total number of pages
                $totalPages = ceil($totalRows / $rowsPerPage);

                // Prepare SELECT statement to retrieve rows for current page
                $query = "SELECT `sname`, `sname_ar`, `proname`, `proname_ar`, `tname`, `tname_ar`, `proyear` FROM `students_projects` LIMIT ?, ?";
                $stmt = $connection->prepare($query);

                // Bind values for placeholder parameters
                $stmt->bindValue(1, $startingRow, PDO::PARAM_INT);
                $stmt->bindValue(2, $rowsPerPage, PDO::PARAM_INT);

                // Execute statement
                $stmt->execute();

                // Fetch rows from result set
                while ($row = $stmt->fetch()) {
                    echo "<tr>";
                    echo "<td>" . $row['sname'] . "</td>";
                    echo "<td>" . $row['proname'] . "</td>";
                    echo "<td>" . $row['tname'] . "</td>";
                    echo "<td>" . $row['proyear'] . "</td>";
                    echo "</tr>";
                }
                ?>
  </tbody>
</table>
<div class="center">
<form action="student-projects.php" method="get">
  <input type="hidden" name="page" value="<?php echo $page - 1; ?>">
  <button type="submit" class="btn" <?php if ($page == 1) {
      echo "disabled";
  } ?>><?=$lang['Previous'];?></button>
</form>
<form action="student-projects.php" method="get">
  <input type="hidden" name="page" value="<?php echo $page + 1; ?>">
  <button type="submit" class="btn" <?php if ($page == $totalPages) {
      echo "disabled";
  } ?>><?=$lang['Next'];?></button>
</form>
</div>
		<?php
            } else {
                ?>

<table class="custom-table">
  <thead>
    <tr>
      <th scope="col"><?=$lang['Student Name'];?></th>
      <th scope="col"><?=$lang['Project Name'];?></th>
      <th scope="col"><?=$lang['Supervisor Name'];?></th>
      <th scope="col"><?=$lang['Year'];?></th>
    </tr>
  </thead>
  <tbody>
    <?php
                require_once "./Connection/connectionpdo.php";

                // Set default page number
                $page = 1;
                if (isset($_GET['page']) && is_numeric($_GET['page'])) {
                    $page = (int)$_GET['page'];
                }

                // Set number of rows to display per page
                $rowsPerPage = 20;

                // Calculate starting row for current page
                $startingRow = ($page - 1) * $rowsPerPage;

                // Prepare SELECT statement to count total number of rows
                $countQuery = "SELECT COUNT(*) as count FROM `students_projects`";
                $countStmt = $connection->prepare($countQuery);

                // Execute statement
                $countStmt->execute();

                // Fetch row from result set
                $row = $countStmt->fetch();
                $totalRows = $row['count'];

                // Calculate total number of pages
                $totalPages = ceil($totalRows / $rowsPerPage);

                // Prepare SELECT statement to retrieve rows for current page
                $query = "SELECT `sname`, `sname_ar`, `proname`, `proname_ar`, `tname`, `tname_ar`, `proyear` FROM `students_projects` LIMIT ?, ?";
                $stmt = $connection->prepare($query);

                // Bind values for placeholder parameters
                $stmt->bindValue(1, $startingRow, PDO::PARAM_INT);
                $stmt->bindValue(2, $rowsPerPage, PDO::PARAM_INT);

                // Execute statement
                $stmt->execute();

                // Fetch rows from result set
                while ($row = $stmt->fetch()) {
                    echo "<tr>";
                    echo "<td>" . $row['sname_ar'] . "</td>";
                    echo "<td>" . $row['proname_ar'] . "</td>";
                    echo "<td>" . $row['tname_ar'] . "</td>";
                    echo "<td>" . $row['proyear'] . "</td>";
                    echo "</tr>";
                }
                ?>
  </tbody>
</table>
<div class="center">
<form action="student-projects.php" method="get">
  <input type="hidden" name="page" value="<?php echo $page - 1; ?>">
  <button type="submit" class="btn" <?php if ($page == 1) {
      echo "disabled";
  } ?>><?=$lang['Previous'];?></button>
</form>
<form action="student-projects.php" method="get">
  <input type="hidden" name="page" value="<?php echo $page + 1; ?>">
  <button type="submit" class="btn" <?php if ($page == $totalPages) {
      echo "disabled";
  } ?>><?=$lang['Next'];?></button>
</form>
</div>
<?php
            }
        ?>
  </tbody>
</table>
			</section>
	</main>
</body>
  <?php include('./Common/footer.php') ?>
  <?php }else{
	header("location: ./");
}
} ?>


