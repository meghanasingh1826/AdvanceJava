<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.result {
	width: 100%;
	border-collapse: collapse;
	background-color: #f2f2f2;
	margin-top:40px;
}
.button {
  font: bold 11px Arial;
  text-decoration: none;
  background-color: black;
  color:white;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
  float: right;	
  margin-top:10px;
}
.button1 {
  font: bold 11px Arial;
  text-decoration: none;
  
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
  float: right;	
}

.result td {
	text-align: center;
	height: 25px;
	border: 1px solid black;
}
.header{

color:white;
background-color:black;

}

th {
	text-align: center;
	height: 50px;
	border: 1px solid black;
}

</style>
<script language="javascript">



function editRecord(id){

    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
</script>
<%@ page isELIgnored="false" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

		<header class="header">
			<div>
				<table width="100%">
					<tr>
						<td>
							<h2>
								Welcome ${userName}
								
							</h2>
						</td>
						<td align="right">
							<form action="logout">
								<input class="button1" type="submit" value="Logout" />
							</form>
						</td>
					</tr>
				</table>
			</div>
		</header>
		
		 <input type="hidden" name="userName" value="${userName}" />
		
<a  href="newEmployee.jsp?userName=${userName}" style="margin-right:5px;"class="button">Upload Employee Details</a>
 
 <input type="button" style="margin-right:5px; "class="button" onclick="location.href='/EmployeeDetailsManagementSystem/download'" value="Download Employee Details" >



<table border="1" class="result">
<tr><th>Employee code</th><th>Employee Name</th><th>Employee location</th><th>Email</th><th>DOB</th> <th>Action</th></tr>
<c:forEach items="${empList}" var="list">
<tr>


 <td>${list.employeeCode}</td><td> ${list.employeeName} </td><td>${list.location}</td><td>${list.email}</td><td>${list.dob}</td><td><input type="button" class="edit" name="edit" value="Edit" style="background-color:black;font-weight:bold;color:white;"  ></td>
 </tr>
</c:forEach>
</table>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="http://code.jquery.com/jquery-plugins.js"></script><script>
$(".edit").on("click",function(){
	var id=$(this).parents("tr").children("td:first").html();
	 window.location.replace("edit.jsp?userName=${userName}&id="+id);
});
</script>
</body>
</html>
