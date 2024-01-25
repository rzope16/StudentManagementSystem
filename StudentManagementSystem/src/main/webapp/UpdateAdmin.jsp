<%@page import="dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Management-System</title>

<style type="text/css">
body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}
form{
width: 40%;
	height: max-content;
	border: 3px solid #565656;
	border-radius: 20px;
	padding: 1rem;
	position: fixed;
}
input {
	width:90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
	
}
.btn {
	width: 30%;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 2rem;
	font-weight: 600;
}

.btn:hover {
	background-color: salmon;
	border: 3px solid salmon;
	color: #fff;
}
h2{
font-size: 2rem;
}
#ck{

margin-top: 0rem;
position: fixed;
margin-left: 500px;

}
</style>
</head>
<body>

<form action="updateAdmin" method="post">
<h2>UpdateAdmin</h2>
<input type="email" name="name" placeholder="Enter email">
<input type="password" name="password" placeholder="Enter New Password" autofocus="autofocus" id="myInput">
<input type="date" name="dob" placeholder="Enter DOB">
<input type="submit" value="Update" class="btn">
</form>
<input type="checkbox" onclick="myFunction()" id="ck">
<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
window.onload = function(){alert('Enter Correct Details')}
</script>
</body>
</html>