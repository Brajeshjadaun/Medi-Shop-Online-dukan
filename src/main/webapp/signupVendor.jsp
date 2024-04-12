<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signupVendor</title>
	<style type="text/css">
	body{
		padding: 0;
		margin: 0;
		background-color: white;
	}
	
	.section{
		height: 100vh;
		width: 100vw;
		position: relative;
		top: 15.2%;
	}
	
	
	.section .inner_section{
		height: 100%;
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: flex-start;
		background-color: black;
	}
	
	.section .inner_section .left_div{
		height: 100%;
		width: 50%;
		background-color: black;
		display: flex;
		justify-content: center;
		align-items: center;
		overflow: hidden;
	}
	
	.inner_section .left_div video{
		width: 100%;
		height: 100%;
	}
	
	.inner_section .right_div{
		height: 100%;
		width: 50%;
		background-color: black;
		display: flex;
		justify-content: center;
		align-items: center;
		overflow: hidden;
	}
	
	.right_div .outer_form{
		border: 2px solid #1daad8;
		border-radius: 10px;
		box-shadow: 5px 5px 8px grey;
		background-color: #1daad8;
		width: 80%;
		height: 70%;
		display: flex;
		flex-direction: column;
		justify-content: flex-start;
		align-items: center;
		
	}
	
	.right_div form{
		width: 50%;
		height: 50%;
		display: flex;
		flex-direction: column;
	
	}
	
	.right_div form .btn1{
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		position: relative;
		top: 10%;
	}
	
	.right_div form .btn{
		background: none;
		border: none;
		background-color: #e1e1e1;
		cursor: pointer;
		margin-bottom: 0;
		border-radius: 5px;
	}
	
	form>h1{
		color: #383b3f;
		position: relative;
		left: 20%;
	}
	
	.right_div form>input {
		position: relative;
		margin-bottom: 30px;
		border-radius: 5px;
		font-size: 20px;
		border: 2px solid #e1e1e1;
	}
	
	.outer_form .notUser{
		position: relative;
		top: 25%;
		color: #383b3f;
	}
	
	.outer_form .notUser button{
		margin: 0;
		background: none;
		border: none;
		padding: 2px;
		cursor: pointer;
		border-radius: 5px;
	}
	
	
	.outer_form .loginbtn:hover{
		border: none;
		background-color: #8149ff;
		color: white;
		border-radius: 5px;
		box-shadow: 5px 5px 8px grey;
	}
	
	
</style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="section">
		<div class="inner_section">
		<div class="left_div">
		<video autoplay="autoplay" loop="loop" muted="muted" src="images/animated-logo/Minimalist Logo for Hospital and Medical Health (1).mp4">		
		</video>
		</div>
		<div class="right_div">
			<div class="outer_form">
				<form action="vendorRegister" method="post">
				<h1>Vendor Signup</h1>
				<input class="user_name" type="text" name="vendor_name" placeholder="Vendor name" autofocus="autofocus" required="required">
				<input class="user_email" type="text" name="vendor_email" placeholder="Email" required="required">
				<input class="password" type="password" name="pass" placeholder="Password" required="required">
				<input class="password" type="password" name="passConfirm" placeholder="Confirm Password" required="required">
			
				<div class="btn1">
				<button class="loginbtn btn" type="submit">Signup</button>
				<button class="loginbtn btn" type="reset">Reset</button>
				</div>
				</form>
				
				<div class="notUser">
				<label class="label1">Already a vendor?</label><a href="loginUserOrVendorOrAdmin.jsp"><button class="loginbtn" type="submit">Login</button></a>
				</div>
			</div>
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>