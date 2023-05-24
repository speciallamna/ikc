<?php
session_start();
if (!$_SESSION['SessionAdmin'])
{
    header("location: ./index.php");
}
?>
<?php
require_once "./Connection/connectionpdo.php";
$id = 1;
$stmt = $connection->prepare("SELECT * from admin_url where ID = ?");
$stmt->bindParam(1, $id, PDO::PARAM_INT);
$stmt->execute();
$result = $stmt->fetchAll();

foreach($result as $row) {
    $old = $row['old'];
    $new = $row['new'];
}
    $x=isset($_POST["adminurl"]);
    if ($x) {
      require_once "./Connection/connectionpdo.php";
      $new_url = filter_input(INPUT_POST, 'admin-url', FILTER_SANITIZE_STRING);
      $sql = "UPDATE admin_url SET old = ?, new = ? WHERE ID = ?";
      $stmt = $connection->prepare($sql);
      $stmt->bindParam(1, $new, PDO::PARAM_STR);
      $stmt->bindParam(2, $new_url, PDO::PARAM_STR);
      $stmt->bindParam(3, $id, PDO::PARAM_INT);
      $stmt->execute();
      
      if ($stmt) {
          if (rename($new, $new_url)) {
              header("Location:  ./$new_url/setting.php");
              $stmt->close();
              $connection->close();
          }
      }
      } 
?>