<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>Fast & Deliverious</title>
<link rel="stylesheet" href="Style/regpage.css">
</head>
<body background="Images/grey.jpg" style="background-size: cover">
	<div style="display: flex">
		<div class="icon" style="margin-left: 50px;">
			<h2 class="logo">Fast & Deliverious</h2>
		</div>
		<div class="back" style="margin-left: 830px">
			<a href="homepage.html">
				<button>BACK</button>
			</a>
		</div>
	</div>

	<section>
		<div class="form-box" style="margin-left: 330px; margin-top: 20px;">
			<div class="form-value">
				<form action="">
					<h2>
						<span>REGISTRATION</span>
					</h2>
					<div class="row" style="display: flex">
						<div class="col-md-6 inputbox" style="margin-right: 20px;">
							<ion-icon name="person-outline"></ion-icon>
							<input type="text" required> <label for="">Name</label>
						</div>
						<div class="col-md-6 inputbox" style="margin-left: 20px;">
							<ion-icon name="chatbubbles-outline"></ion-icon>
							<input type="number" required> <label for="">Contact
								Number</label>
						</div>
					</div>

					<div class="row" style="display: flex">
						<div class="col-md-6 inputbox" style="margin-left: 5px;">
							<ion-icon name="clipboard-outline"></ion-icon>
							<input type="text" required> <label for="">Address</label>
						</div>

						<div class="col-md-6 inputbox" style="margin-left: 20px;">
							<input type="date" required> <label for=""></label>
						</div>
					</div>

					<div class="inputbox" style="margin-left: 150px;">
						<ion-icon name="mail-outline"></ion-icon>
						<input type="email" required> <label for="">Email</label>
					</div>

					<div class="inputbox" style="margin-left: 150px;">
						<ion-icon name="person-add-outline"></ion-icon>
						<input type="text" required> <label for="">Username</label>
					</div>

					<div class="inputbox" style="margin-left: 150px;">
						<ion-icon name="lock-closed-outline"></ion-icon>
						<input type="password" required> <label for="">Password</label>
					</div>
					<a href="loginpage.html">
						<button>Register</button>
					</a>
				</form>

			</div>
		</div>

	</section>



	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>