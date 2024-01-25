<%@page import="dto.Admin"%>
<%@page import="java.util.List"%>
<%@page import="dto.Student"%>
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
	html{
		overflow: scroll;
	}
	body{
		display: flex;
		flex-direction: column;
		align-items: center;
		font-family: 'Poppins', sans-serif;
		width: 100vw;
	}
	h1{
		font-size: 3rem;
		margin-bottom: 45px;
	}
	table{
		border:0;
		font-size: .9rem;
		position: inherit;
	}
	th{
		background: rgb(177,166,166);
        background: linear-gradient(61deg, rgba(177,166,166,0.37298669467787116) 15%, rgba(224,169,173,0.37298669467787116) 51%, rgba(16,203,241,0.5018382352941176) 90%);
		border:0;
		color:#5c5959;
		padding: 1rem;
	}
	tr{
		border: 0;
		border-bottom: 3px solid #565656;
	}
	td{
		border: 0;
		padding: 1rem;
	}
	a{
		padding:.5em 1em;
		font-size: 1.3rem;
		text-decoration: none;
		color: #202020;
		margin: .5rem 2rem;
		font-weight: 600;
	}
	a:hover{
		color: salmon;
	}
	div{
		width:100%;
		position:fixed;
	}
	
	img{
	margin-left: 35px;
	}
	#myInput{
	 font-size: 16px;
	 padding: 12px 20px 12px 40px;
     border: 1px solid #ddd;
     margin-bottom: 12px;
	 width: 180px;
	 margin-left: 55rem;
     margin-top: -100px;
	}

   img{
   height: 80px;
   width: 65px;
   }
   img:hover{
   height: 200px;
   width: 160px;
   cursor: pointer;
   }

</style>
<body>
	<%
	Admin admin = (Admin) session.getAttribute("admin");
	if(admin!=null){
	List<Student> students = (List) request.getAttribute("students"); %>
	<h1>Students List</h1>
	
	<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." name="search">
	
	<table id="myTable">
		<tr>
			<th>Student_Id</th>
			<th>Student_Name</th>
			<th>Student_Email</th>
			<th>Student_Phno</th>
			<th>Student_Fee</th>
			<th>Student_Photo</th>
			<th>Update_Student</th>
			<th>Delete_Student</th>
		</tr>
		<%for(Student student : students){ %>
		<tr>
			<td><%= student.getStudentId()%></td>
			<td><%= student.getStudentName()%></td>
			<td><%= student.getStudentEmail()%></td>
			<td><%= student.getStudentPhoneNumber()%></td>
			<td><%= student.getStudentFee()%></td>
			<td> <img alt="NA" src="data:image/jpg;base64 ,<%= student.getInputStream()%>" > </td>
			<td><a href="updateStudent?studentId=<%= student.getStudentId()%>">Update</a></td>
			<td><a href="deleteStudent?studentId=<%= student.getStudentId()%>">Delete</a></td>
		</tr>
		<% } %>
		
	</table>
	<div><a href="Dashboard.jsp">Home</a></div>
	
	<%}else{
		response.sendRedirect("AdminLogin.jsp");
	}%>
	
	<script>
function myFunction() {
 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
	
</body>
</html>