<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>loginAdmin</title>
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
		background-color: #1daad8;
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
		background-color: #1daad8;
		display: flex;
		justify-content: center;
		align-items: center;
		overflow: hidden;
	}
	
	.right_div .outer_form{
		border: 2px solid #1daad8;
		border-radius: 10px;
		box-shadow: 5px 5px 8px black;
		background-color: whitesmoke;
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
		top: 20%;
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
		<video autoplay="autoplay" loop="loop" muted="muted" src="images/animated-logo/Minimalist Logo for Hospital and Medical Health.mp4">		
		</video>
		</div>
		<div class="right_div">
			<div class="outer_form">
				<form action="#">
				<h1>Admin Login</h1>
				<input class="user_name" type="text" name="admin_name" placeholder="Adminname/Email" autofocus="autofocus" required="required">
				<input class="password" type="password" name="pass" placeholder="Password" required="required">
			
				<div class="btn1">
				<button class="loginbtn btn" type="submit">Login</button>
				<button class="loginbtn btn" type="reset">Reset</button>
				</div>
				</form>
				
				<div class="notUser">
				<label class="label1">Don't have an account?</label><a href="signupUserOrVendorOrAdmin.jsp"><button class="loginbtn" type="submit">Signup</button></a>
				</div>
			</div>
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>