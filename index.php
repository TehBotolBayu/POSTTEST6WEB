<?php
session_start();
error_reporting(E_ERROR);

require 'configimg.php';



if(isset($_POST['sign_btn'])){

	$acc = $_POST['email'];
	
	$res = mysqli_query($db, "SELECT * FROM akun WHERE account='$acc'");
	$data = mysqli_fetch_assoc($res);

	$pw = $data['pw'];
	$tipe = $data['tipe'];
	

	if($_POST['password'] == $pw){
		$_SESSION['tipe'] = $data['tipe'];
		$_SESSION['akun'] = $data['account'];
		$_SESSION['pw'] = $data['pw'];
		if($tipe == 'admin'){
			header('Location: web_admin.php');
		}
		else if($tipe == 'user'){
			header('Location: web_user.php');
		}
	}
	else{
		echo "<script>
			alert('Sorry, Wrong Password!');
		</script>";
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="logstyle.css">
</head>
<body>
<div class="log">
	<div class="header">
		<h2>Sign In</h2>
	</div>
	<form method="post" action="">

		<div class="input-group">
			<label>Email</label>
			<input type="email" name="email" value="">
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password">
		</div>

		<div class="input-group">
			<button type="submit" class="btn" name="sign_btn">Sign In</button>
		</div>
	</form>
</div>
</body>
</html>