
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.result {
	height:300px;
	width:500px;
	border-collapse: collapse;
}
body{
	background-color: #f2f2f2;

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
.button{
color:white;
background-color:black;
}
.logout {
  font: bold 11px Arial;
  text-decoration: none;
 
}


.header{
color:white;
background-color:black;
width:100%;
height:100px;
}


.button {

  /* remove default behavior */
  appearance:none;
  -webkit-appearance:none;

  /* usual styles */
  padding:10px;
  border:none;
  background-color:black;
  color:white;
  font-weight:600;
  border-radius:5px;
  width:30%;

}.rounded-input {
  padding:10px;
  border-radius:10px;
}
input {
  padding:10px;
  margin:10px 0; 
  box-shadow:0 0 15px 4px rgba(0,0,0,0.06);
}
.border-customized-input {
   border: 2px solid #eee;
}


</style>
</head>

<body>
<% 
	String org = request.getParameter("id");
	String userName=request.getParameter("userName");
 %>
<div class="header">

		<header >
			<div >
				<table width="100%">
					<tr>
						<td>
							<h2>
								Welcome <%= userName %>
								
							</h2>
						</td>
						<td align="right">
							<form action="logout">
								<input class="logout" type="submit" value="Logout" />
							</form>
						</td>
					</tr>
				</table>
			</div>
		</header>
		
		</div>
		<h2 align="center">You can Edit your details here</h1>
<div align="center"  >
	

		<form action="Edit" method="post" >
	
 <input type="hidden" name="id" value="<%= org %>" />
 <input type="hidden" name="userName" value="<%= userName %>" />
 
		
	
			<br>
			<table class="result">
			
				<tr>
					<td align:center> Employee Name :</td>
					<td><input type="text" name="employeeName" maxlength="100" required></td>
					
				</tr>
				
				<tr>
					<td>location :</td>
					<td><input type="text" name="location" maxlength="500" required> <br></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><input type="email" name="email" maxlength="100" required> <br></td>
				</tr>
				<tr>
					<td>DOB :</td>
					<td><input type="date" name="dob" required> <br></td>
				</tr>
				<tr>
					<th></th>
					<td ><input type="submit" class="button"value="Edit">
					<input type="reset" class="button"value="reset">
						</td>
						
			</table>
		</form>
	</div>
</div>
</body>
</html>