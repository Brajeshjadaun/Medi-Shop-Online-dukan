<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignupUserVendorAdmin</title>
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
	
	.right_div .form{
		width: 50%;
		height: 50%;
		display: flex;
		flex-direction: column;
	
	}
	
	.right_div .form .btn{
		background: none;
		border: none;
		background-color: #e1e1e1;
		cursor: pointer;
		margin-bottom: 10%;
		font-size: 20px;
		border-radius: 5px;
		color: #383b3f;
		padding: 2%;
		width: 100%;
	}
	
	.right_div .form .btn:hover{
		background-color: #383b3f;
		color: white;
	}
	
	.form>h1{
		color: #383b3f;
		position: relative;
		left: 30%;
	}
	
	.outer_form .notUser{
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
				<div class="form">
				<h1>Signup</h1>
					<a href="signupAdmin.jsp"><button class="btn">Admin Signup</button></a>
					<a href="signupVendor.jsp"><button class="btn">Vendor Signup</button></a>
					<a href="signup.jsp"><button class="btn">User Signup</button></a>
				</div>
				
				<div class="notUser">
				<label class="label1">Already a user?</label><a href="loginUserOrVendorOrAdmin.jsp"><button class="loginbtn" type="submit">Login</button></a>
				</div>
			</div>
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>