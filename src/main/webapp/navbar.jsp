<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navbar</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
body {
	padding: 0;
	margin: 0;
	height: 100vh;
	width: 100vw;
}

.navbar {
	position: fixed;
	top: 0;
	width: 100vw;
	height: 15vh;
	z-index: 1;
	background-color: white;
}

.navbar .section {
	max-width: 100%;
	max-height: 100%;
}

.navbar .section1 {
	height: 60%;
	display: flex;
	flex-direction: row;
}

.navbar .section2 {
	height: 38.4%;
	border-bottom: 2px solid #e1e1e1;
	border-top: 2px solid #e1e1e1;
	background-color: white;
}

.navbar .section1 .logo {
	height: 100%;
	width: 12%;
	padding-left: 30px;
	padding-right: 30px;
}

.navbar .section1 img {
	height: 100%;
	width: 100%;
}

.navbar .section1 .logo_border_right {
	position: relative;
	top: 8px;
	border-right: 2px solid #96a4ad;
	height: 80%;
	width: 0%;
}

.section1 .search_box {
	display: flex;
	flex-direction: row;
	position: relative;
	left: 15%;
	top: 15%;
	height: 70%;
	width: 30%;
	border-radius: 50px;
	cursor: pointer;
}

.section1 .search_box>input {
	height: 80%;
	width: 100%;
	font-size: 25px;
	border-radius: 50px;
	border: none;
	position: relative;
	left: 1%;
	cursor: pointer;
	border: 2px solid #e1e1e1;
	padding-left: 10px;
}

.section1 .search_box a>i {
	height: 100%;
	width: 100%;
	position: relative;
	left: 40%;
	top: 30%;
	color: #8c52fe;
}

.section1 .search_box>a {
	height: 83%;
	width: 20%;
	position: absolute;
	top: 4.8%;
	left: 80.5%;
	cursor: pointer;
	border-radius: 50px;
}

.section1 .search_box>a:hover {
	background-color: #f4f7fb;
}

.section1 .nav_buttons {
	height: 100%;
	width: 33.5%;
	position: relative;
	left: 20%;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
}

.section1 .nav_buttons .btn {
	position: relative;
	top: 20px;
	color: #383b3f;
}

.section1 .nav_buttons .btn a {
	cursor: pointer;
}

.section1 .nav_buttons .btn a:hover {
	color: blue;
}

a:link, a:visited {
	text-decoration: none;
}

a:link:active, a:visited:active {
	text-decoration: none;
}

.section1 .nav_buttons .btn a>i {
	color: #8c52fe;
}

.section2 .nav2_buttons {
	height: 100%;
	width: 50%;
	position: relative;
	top: 20%;
	left: 23%; display : flex;
	flex-direction: row;
	display: flex; flex-direction : row;
	justify-content: space-around;
}

.section2 .nav2_buttons a:hover {
	color: blue;
}
</style>
</head>
<body>
	<header class="navbar">
		<section class="section section1">
			<div class="logo">
				<a><img alt="logo1" class="logo1"
					src="images/logo/3-removebg-preview.png"></a>
			</div>
			<div class="logo_border_right"></div>

			<div class="search_box">
				<input type="text" placeholder="Search here"> <a href="#"><i
					class="fa-solid fa-magnifying-glass"></i></a>
			</div>

			<div class="nav_buttons">
				<div class="btn login_btn">
					<a href="#"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
				</div>
				<div class="btn signup_btn">
					<a href="#"><i class="fa-solid fa-user-plus"></i> Signup</a>
				</div>
				<div class="btn cart_btn">
					<a href="#"><i class="fa-solid fa-cart-shopping"></i> Cart</a>
				</div>
			</div>
		</section>
		<section class="section section2">
			<div class="nav2_buttons">
				<div class="btn home_btn">
					<a href="#">Home</a>
				</div>
				<div class="btn shop_btn">
					<a href="#">Shops</a>
				</div>
				<div class="btn products_btn">
					<a href="#">Medicines</a>
				</div>
				<div class="btn category_btn">
					<a href="#">Categories</a>
				</div>
				<div class="btn services_btn">
					<a href="#">Services</a>
				</div>

			</div>
		</section>
	</header>
</body>
</html>