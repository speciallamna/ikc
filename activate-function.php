<!-- --------------------------------Send Active request------------------------------------- -->
<?php
session_start();
$expiration_time = time() + (60 * 60); // 1 hour in seconds
setcookie('session_token', $session_token, [
  'samesite' => 'Strict',
  'secure' => true,
  'httponly' => true,
  'expires' => $expiration_time,
]);

if (isset($_POST['csrf_token']) && $_POST['csrf_token'] === $_SESSION['csrf_token']) {

    // Set the time period for the request limit (in seconds)
    $timePeriod = 60;

    // Set the maximum number of requests allowed within the time period
    $requestLimit = 10;

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

    if (isset($_POST["request"])) {
        require_once "Connection/connectionpdo.php";

        $fullname = filter_input(INPUT_POST, 'fullname', FILTER_SANITIZE_STRING);
        $user = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
        $type = filter_input(INPUT_POST, 'type', FILTER_SANITIZE_STRING);
        $TYPE_TEACHER = "Lecturer";
        $TYPE_STUDENT = "Student";

        $stmt = $connection->prepare("SELECT username FROM active_request WHERE username = :username ");
        $stmt->bindParam(':username', $user, PDO::PARAM_STR);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $username = $row['username'];

        $account_state = 'Deactive';

        // Prepare the SQL query with placeholders
        $stmt1 = $connection->prepare("SELECT * FROM login_student WHERE student_username = :student_username and account = :account");

        // Bind the variables to the placeholders
        $stmt1->bindParam(':student_username', $user, PDO::PARAM_STR);
        $stmt1->bindParam(':account', $account_state, PDO::PARAM_STR);

        // Execute the query and check if a matching row was found
        $stmt1->execute();
        if ($stmt1->rowCount() > 0) {
            // A matching row was found, so fetch the row
            $row1 = $stmt1->fetch(PDO::FETCH_ASSOC);
            $username1 = $row1['student_username'];
        }

        // Prepare the SQL query with placeholders
        $stmt2 = $connection->prepare("SELECT * FROM login_teacher WHERE teacher_username = :teacher_username and account = :account");

        // Bind the variables to the placeholders
        $stmt2->bindParam(':teacher_username', $user, PDO::PARAM_STR);
        $stmt2->bindParam(':account', $account_state, PDO::PARAM_STR);

        // Execute the query and check if a matching row was found
        $stmt2->execute();
        if ($stmt2->rowCount() > 0) {
            // A matching row was found, so fetch the row
            $row2 = $stmt2->fetch(PDO::FETCH_ASSOC);
            $username2 = $row2['teacher_username'];
        }


        if ($stmt) {
            if ($username != $user) {
                if ($username1 == $user) {
                    $stmt3 = $connection->prepare("INSERT INTO active_request (full_name, username, email, type) VALUES (:full_name, :username, :email, :type)");
                    $stmt3->bindParam(':full_name', $fullname, PDO::PARAM_STR);
                    $stmt3->bindParam(':username', $user, PDO::PARAM_STR);
                    $stmt3->bindParam(':email', $email, PDO::PARAM_STR);
                    $stmt3->bindParam(':type', $TYPE_STUDENT, PDO::PARAM_STR);
                    $stmt3->execute();
                    $_SESSION['request_success'] = "Request sent successfully";
                    header("Location: ./active-request.php");
                } elseif ($username2 == $user) {
                    $stmt4 = $connection->prepare("INSERT INTO active_request (full_name, username, email, type) VALUES (:full_name, :username, :email, :type)");
                    $stmt4->bindParam(':full_name', $fullname, PDO::PARAM_STR);
                    $stmt4->bindParam(':username', $user, PDO::PARAM_STR);
                    $stmt4->bindParam(':email', $email, PDO::PARAM_STR);
                    $stmt4->bindParam(':type', $TYPE_TEACHER, PDO::PARAM_STR);
                    $stmt4->execute();
                    $_SESSION['request_success'] = "Request sent successfully";
                    header("Location: ./active-request.php");
                } else {
                    $_SESSION['user_is_active'] = "Request sent error";
                    header("Location: ./active-request.php");
                }
            } else {
                $_SESSION['request_same'] = "Request sent error";
                header("Location: ./active-request.php");
            }
        } else {
            $_SESSION['request_no'] = "Request sent error";
            header("Location: ./active-request.php");
        }

        $stmt->closeCursor();
        $stmt2->closeCursor();
        $stmt1->closeCursor();
        $stmt3->closeCursor();
        $stmt4->closeCursor();
        $stmt = null;
        $stmt2 = null;
        $stmt1 = null;
        $stmt3 = null;
        $stmt4 = null;
        $connection = null;
    }
}else{
  $_SESSION['request_no'] = "Request sent error";
  header("Location: ./active-request.php");
  $stmt->closeCursor();
  $stmt2->closeCursor();
  $stmt1->closeCursor();
  $stmt3->closeCursor();
  $stmt4->closeCursor();
  $stmt = null;
  $stmt2 = null;
  $stmt1 = null;
  $stmt3 = null;
  $stmt4 = null;
  $connection = null;
}
?>