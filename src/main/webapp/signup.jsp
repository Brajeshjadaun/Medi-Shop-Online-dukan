<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup</title>
</head>
<body>
	<style type="text/css">
	body{
		padding: 0;
		margin: 0;
		background-color: white;
	}
	
	.section{
		max-height: 100vh;
		max-width: 100vw;
		position: relative;
		top: 15.2%;
	}
	
	.section .inner_section{
		max-height: 100%;
		max-width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: flex-start;
		background-color: black;
	}
	
	.inner_section video{
		width: 50%;
		height: 50%;
	}
	
	.inner_section .right_div{
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
		height: 80%;
		display: flex;
		flex-direction: column;
		
	}
	
	.right_div form{
		width: 50%;
		height: 50%;
		display: flex;
		flex-direction: column;
		position: relative;
		top: 80px;
		left: 150px;
	}
	
	form>h1{
		color: #383b3f;
		position: relative;
		left: 70px;
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
		top: 180px;
		left: 230px;
		color: #383b3f;
	}
	
	.outer_form .notUser button{
		margin: 0;
		background: none;
	}
	
	.outer_form button{
		border: none;
		background-color: #e1e1e1;
		cursor: pointer;
		padding: 2px;
		margin: 50px;
		margin-bottom: 0;
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
</body>

<jsp:include page="navbar.jsp"></jsp:include>
	<div class="section">
		<div class="inner_section">
		<video autoplay="autoplay" loop="loop" muted="muted" src="images/animated-logo/Minimalist Logo for Hospital and Medical Health (1).mp4">		
		</video>
		<div class="right_div">
			<div class="outer_form">
				<form action="userRegister" method="post">
				<h1>User Signup</h1>
				<input class="user_name" type="text" name="user_name" placeholder="Username" autofocus="autofocus" required="required">
				<input class="user_email" type="text" name="user_email" placeholder="Email" required="required">
				<input class="password" type="password" name="pass" placeholder="Password" required="required">
				<input class="password" type="password" name="passConfirm" placeholder="Confirm Password" required="required">
			
				<div class="btn">
				<button class="loginbtn" type="submit">Signup</button>
				<button class="loginbtn" type="reset">Reset</button>
				</div>
				</form>
				
				<div class="notUser">
				<label class="label1">Already a user?</label><a href="login.jsp"><button class="loginbtn" type="submit">Login</button></a>
				</div>
			</div>
		</div>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>

</html>