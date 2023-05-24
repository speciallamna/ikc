<?php include('./Common/common-header.php') ;?>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  background-color: ffffff;
  padding: 12px;
  border: 2px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=email] {
  width: 100%;
  background-color: ffffff;
  padding: 12px;
  border: 2px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.form {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-top: 15%;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.alert{--bs-alert-bg:transparent;--bs-alert-padding-x:1rem;--bs-alert-padding-y:1rem;--bs-alert-margin-bottom:1rem;--bs-alert-color:inherit;--bs-alert-border-color:transparent;--bs-alert-border:1px solid var(--bs-alert-border-color);--bs-alert-border-radius:0.375rem;position:relative;padding:var(--bs-alert-padding-y) var(--bs-alert-padding-x);margin-bottom:var(--bs-alert-margin-bottom);color:var(--bs-alert-color);background-color:var(--bs-alert-bg);border:var(--bs-alert-border);border-radius:var(--bs-alert-border-radius)}.alert-heading{color:inherit}.alert-link{font-weight:700}.alert-dismissible{padding-right:3rem}.alert-dismissible .btn-close{position:absolute;top:0;right:0;z-index:2;padding:1.25rem 1rem}.alert-primary{--bs-alert-color:#084298;--bs-alert-bg:#cfe2ff;--bs-alert-border-color:#b6d4fe}.alert-primary .alert-link{color:#06357a}.alert-secondary{--bs-alert-color:#41464b;--bs-alert-bg:#e2e3e5;--bs-alert-border-color:#d3d6d8}.alert-secondary .alert-link{color:#34383c}.alert-success{--bs-alert-color:#0f5132;--bs-alert-bg:#d1e7dd;--bs-alert-border-color:#badbcc}.alert-success .alert-link{color:#0c4128}.alert-info{--bs-alert-color:#055160;--bs-alert-bg:#cff4fc;--bs-alert-border-color:#b6effb}.alert-info .alert-link{color:#04414d}.alert-warning{--bs-alert-color:#664d03;--bs-alert-bg:#fff3cd;--bs-alert-border-color:#ffecb5}.alert-warning .alert-link{color:#523e02}.alert-danger{--bs-alert-color:#842029;--bs-alert-bg:#f8d7da;--bs-alert-border-color:#f5c2c7}.alert-danger .alert-link{color:#6a1a21}.alert-light{--bs-alert-color:#636464;--bs-alert-bg:#fefefe;--bs-alert-border-color:#fdfdfe}.alert-light .alert-link{color:#4f5050}.alert-dark{--bs-alert-color:#141619;--bs-alert-bg:#d3d3d4;--bs-alert-border-color:#bcbebf}.alert-dark .alert-link{color:#101214}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<section class="section">
				<div class="container">
        <?php
          session_start();
if  ($_SESSION['request_same'] == "Request sent error") {
  echo "<div class='alert alert-warning' role='alert' id='rerror2'>";
  echo $lang['Active Request Already Sent'];
  echo "</div>";
  echo"<script>
  setTimeout(() => {
  const rerror2 = document.getElementById('rerror2');
  rerror2.style.display = 'none';
}, 2000); 
</script>";
unset ($_SESSION['request_same']);
}elseif  ($_SESSION['user_is_active'] == "Request sent error") {
  echo "<div class='alert alert-warning' role='alert' id='rerror2'>";
  echo $lang['User Already Active'];
  echo "</div>";
  echo"<script>
  setTimeout(() => {
  const rerror2 = document.getElementById('rerror2');
  rerror2.style.display = 'none';
}, 2000); 
</script>";
unset ($_SESSION['user_is_active']);}
elseif  ($_SESSION['request_no'] == "Request sent error") {
  echo "<div class='alert alert-danger' role='alert' id='rerror2'>";
  echo $lang['Active Request Failed'];
  echo "</div>";
  echo"<script>
  setTimeout(() => {
  const rerror2 = document.getElementById('rerror2');
  rerror2.style.display = 'none';
}, 2000); 
</script>";
unset ($_SESSION['request_no']);
}elseif  ($_SESSION['request_noo'] == "Request sent error") {
  echo "<div class='alert alert-danger' role='alert' id='rerror2'>";
  echo $lang['User Not Found'];
  echo "</div>";
  echo"<script>
  setTimeout(() => {
  const rerror2 = document.getElementById('rerror2');
  rerror2.style.display = 'none';
}, 2000); 
</script>";
unset ($_SESSION['request_noo']);
}elseif  ($_SESSION['request_success'] == "Request sent successfully") {
  echo "<div class='alert alert-success' role='alert' id='rerror2'>";
  echo $lang['Active Request Sent Successfully'];
  echo "</div>";
  echo"<script>
  setTimeout(() => {
  const rerror2 = document.getElementById('rerror2');
  rerror2.style.display = 'none';
}, 2000); 
</script>";
unset ($_SESSION['request_success']);
}else{

}
session_start();

if (!isset($_SESSION['csrf_token'])) {
  $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}
          ?>
					<form class="form" action="./activate-function.php" method="POST">
					<h2 class="h2 section-title"><?=$lang['Active Request'];?></h2>
          <input type="hidden" name="csrf_token" value="<?php echo $_SESSION['csrf_token']; ?>">
  <div class="row">
    <div class="col-25">
      <label for="fullname">Full Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="fullname" name="fullname" required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="username"><?=$lang['Username'];?></label>
    </div>
    <div class="col-75">
      <input type="text" id="username" name="username" required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="email"><?=$lang['Email'];?></label>
    </div>
    <div class="col-75">
      <input type="email" id="email" name="email" required>
    </div>
  </div>
  <br>
  <div class="row">
    <input type="submit" name="request" value="<?=$lang['SUBMIT'];?>">
  </div>
  </form>
				</div>
			</section>
			<?php include('./Common/footer.php') ?>