<html>
<head>
<style type="text/css">


.signup {
	font-size: 1.2rem;
	color: #ABA8AE; a { color : #fff;
	cursor: pointer;
}

}
.button {

  /* remove default behavior */
  appearance:none;
  -webkit-appearance:none;

  /* usual styles */
  padding:10px;
  border:none;
  background-color:#3F51B5;
  color:#fff;
  font-weight:600;
  border-radius:5px;
  width:100%;

}
.rounded-input {
  padding:10px;
  border-radius:10px;
}
input[type=text] {
  padding:10px;
  margin:10px 0; 
  box-shadow:0 0 15px 4px rgba(0,0,0,0.06);
}
.border-customized-input {
   border: 2px solid #eee;
}
* {
  box-sizing: border-box;
}
.container {
	position: center;
	margin-right: 35px;
	margin-top:50px;
	margin-left: 350px;
	height: 400px;
	width: 500px;
	background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%,
		rgba(0, 0, 0, 0.6) 100%);
	transition: opacity 0.1s, transform 0.3s
		cubic-bezier(0.17, -0.65, 0.665, 1.25);
	transform: scale(1);
}

}
input[type=submit] {
	background-color: red;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #4169E1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	margin-top: 3px;
	margin-bottom: 3px;
}
</style>
<title>Login</title>
</head>
<div align="center" class="container">
	<div>
	
<h1>Login</h1>
		<form action="SignIn" method="post">
			<br>
			<table>
				<tr>
					<td>User Name :</td>
					<td><input type="text" name="userName" maxlength="50" minlength="5" required></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="password" maxlength="50" minlength="5" required> <br></td>
				</tr>
				<tr>
					<th></th>
					<td align="right"><input class="button" type="submit" value="login"
						align="right"></td>
			</table>
		</form>
	</div>
	<p class="signup">
		Don't have an account? <a href="register.jsp">Register</a>
	</p>

	<p>
		<a href="forgetPassword.jsp">ForgetPassword</a>
	</p>

</div>
</body>
</html>