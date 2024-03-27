<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>footer</title>

<style type="text/css">
	body {
		padding: 0;
		margin: 0;
		height: 100vh;
		width: 100vw;
	}

	.footer{
		height: 100%;
		width: 100%;
		margin-top: 90px;
		background-color: #eef4ff;
		overflow: hidden;
	}
	
	.footer .footer1{
		height: 80%;
		width: 98%;
		padding: 10px;
		display: flex;
		flex-direction: row;
		justify-content: space-around;
	}
	
	.footer h2{
		color: #383b3f;
	}
	
	.footer h4{
		color: #52616b;
		cursor: pointer;
	}
	
	.footer1 .followus .social{
		display: flex;
		flex-direction: row;
		justify-content: space-between;
	}
	
	.footer1 .followus .social a:hover{
		cursor: pointer;
		box-shadow: 2px 2px 8px #52616b;
	}
	
	.footer2{
		height: 20%;
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: space-around;
	}
	
	.footer2 h2{
		position: relative;
		left: 45px;
	}
	
	.footer2 .image>img{
		height: auto;
		width: 35%;
	}
	
	.footer2 .image{
		position: relative;
		left: 50px;
	}
	
	.footer2 .copyright{
		position: relative;
		top: 90px;
	}
</style>

</head>
<body>

<div class="footer">
			<div class="footer1">
				<div class="company">
					<h2>Company</h2>
					<h4><a>About Us</a></h4>
					<h4><a>Careers</a></h4>
					<h4><a>Blog</a></h4>
					<h4><a>Partner with MediShop</a></h4>
				</div>
				<div class="help">
					<h2>Need Help</h2>
					<h4><a>Browse all medicines</a></h4>
					<h4><a>Browse all molecules</a></h4>
					<h4><a>Browse all cities</a></h4>
					<h4><a>Browse all stores</a></h4>
				</div>
				<div class="policy">
					<h2>Policy Info</h2>
					<h4><a>Editorial Policy</a></h4>
					<h4><a>Privacy Policy</a></h4>
					<h4><a>Velnerability Disclosure Policy</a></h4>
					<h4><a>Terms and Conditions</a></h4>
					<h4><a>Customer Support Policy</a></h4>
					<h4><a>Return Policy</a></h4>
				</div>
				<div class="followus">
					<h2>Follow Us On</h2>
					<div class="social">					
						<h4><a><i class="fa-brands fa-instagram"></i></a></h4>
						<h4><a><i class="fa-brands fa-facebook"></i></a></h4>
						<h4><a><i class="fa-brands fa-youtube"></i></a></h4>
						<h4><a><i class="fa-brands fa-square-twitter"></i></a></h4>
					</div>
				</div>
			</div>
			<div class="footer2">
				<div class="payment">
					<h2>Our Payment Partners</h2>
					<div class="image">
					<img alt="payment-partners" src="images/payment.png">					
					</div>
				</div>
				<div class="copyright">
					<i class="fa-regular fa-copyright"></i> 2024 MediShop.All Rights Reserved
				</div>
			</div>
		</div>

</body>
</html>