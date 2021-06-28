<html>
<head>
<style type="text/css">
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

input[type=submit] {
	background-color: #1E90FF;
	color: white;
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

}.rounded-input {
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
	margin-left: 350px;
	margin-top:25px;
	height: 500px;
	width: 500px;
	background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%,
		rgba(0, 0, 0, 0.6) 100%);
	transition: opacity 0.1s, transform 0.3s
		cubic-bezier(0.17, -0.65, 0.665, 1.25);
	transform: scale(1);
}
</style>
<title>Flight Search</title>
</head>
<body>

<div align="center" class="container">
<h1>Register</h1>
	<div>
		<form action="register" method="post">
			<br>
			<table>
				<tr>
					<td>Set User Name :</td>
					<td><input type="text" name="userName" maxlength="50" minlength="5"></td>
				</tr>
				<tr>
					<td>Brand of your first mobile phone? :</td>
					<td><input type="text" name="answer"></td>
				</tr>
				<tr>
					<td>Set Password :</td>
					<td><input type="password" name="password" maxlength="50" minlength="5"> <br></td>
				</tr>
				<tr>
					<td>Confirm Password :</td>
					<td><input type="password" name="confirmPassword" maxlength="50" minlength="5"> <br></td>
				</tr>
				<tr>
					<td></td>
					<td align="right"><input class="button" type="submit" value="register"
						align="right"></td>
			</table>
		</form>
	</div>
</div>
</body>
</html>