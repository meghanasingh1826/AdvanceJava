<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T">
</head>
<style type="text/css">
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-top:100px;
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



.signup {
	font-size: 1.2rem;
	color: #ABA8AE; a { color : #fff;
	cursor: pointer;
}

}
.container {
	position: center;
	margin-right: 35px;
	margin-left: 350px;
	height: 100%;
	width: 500px;
	background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%,
		rgba(0, 0, 0, 0.6) 100%);
	transition: opacity 0.1s, transform 0.3s
		cubic-bezier(0.17, -0.65, 0.665, 1.25);
	transform: scale(1);
}
</style>
</head>
<body>
	<div class="container">
<h1>Forget Password</h1>
		<hr>
		<div class="row col-md-10 col-md-offset-3">

			<div class="card card-body">


				<div class="col-md-8 col-md-offset-3">

					<form action="<%=request.getContextPath()%>/forgetpassword"
						method="post">

						<div class="form-group">
							<label for="uname">User Name:</label> <input type="text"
								class="form-control" id="uname" name="userName" maxlength="50" minlength="5" required>
						</div>

						<div class="form-group">
							<p>Security Question: Answer the given question: 1)Brand of
								your first mobile phone?</p>
							<label for="uname">Answer:</label> <input type="text"
								class="form-control" id="uname" name="answer" required>
						</div>


						<button type="submit" class="btn btn-primary">Submit</button>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>