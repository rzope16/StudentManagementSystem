<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Management-System</title>
</head>
<style>
html {
	overflow: hidden;
}

body {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}

.form1 {
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

h2 {
	font-size: 2rem;
}
div{
width: 500px;
 margin-top: 50px;
 margin-left: 300px;
}
.btn1 {
	width: 180px;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 15rem;
	font-weight: 800;
	position: relative;
	margin-left: 200px;
	padding: 0px;
	text-align: center;
	border: none;
	
}

.btn1:hover {
    width: 180px;
	background-color: black;
	border: 3px solid black;
	color: white;
	text-decoration: none;
	position: relative;
}

#ck{

margin-top: 3rem;
position: fixed;
margin-left: 500px;

}
</style>
<body>
	<form action="login" method="post" class="form1">
	<h2>Admin Login</h2>
		<input name="adminEmail" placeholder="Enter Your Email" type="email"><br><br>
		<input name="adminPassword" placeholder="Enter Your Password" 
			type="password" id="myInput"><br><br>
			 
		<input type="submit" class="btn" value="Login">
	</form>
	<input type="checkbox" onclick="myFunction()" id="ck"><br>
	<a href="UpdateAdmin.jsp" class="btn1">Forgot Password</a>
	
	<script type="text/javascript">
	function myFunction() {
		  var x = document.getElementById("myInput");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	</script>
</body>
</html>