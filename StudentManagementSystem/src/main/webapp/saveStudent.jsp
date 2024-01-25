<%@page import="dto.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student-Management-System</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<style>
html {
	overflow: hidden;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}

form {
	width: 40%;
	height: max-content;
	border: 3px solid #565656;
	border-radius: 20px;
	padding: 1rem;
	cursor: pointer;
}

input {
	width:90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
	cursor: pointer;
	
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
	cursor: pointer;
}

h2 {
	font-size: 2rem;
}


 input[type="file"] {
        color: blue;
      }

</style>
<body>
	<%
		Admin admin =(Admin) session.getAttribute("admin");
	if(admin!=null){
	%>

	<form action="save" method="post" enctype="multipart/form-data">
		<h2>Save Student</h2>
		<input name="studentName" placeholder="Enter Student Name: "
			type="text"><br> <br> <input
			name="studentPhoneNumber" placeholder="Enter Student Phone Number"
			type="text"><br> <br> <input name="studentEmail"
			placeholder="Enter Student email" type="email"><br> <br>
			<input type="file" name="photo" value="Select Photo">
		<input type="submit" class="btn" value="Save">
	</form>
	<%}else{
		response.sendRedirect("AdminLogin.jsp");
	} %>
</body>
</html>