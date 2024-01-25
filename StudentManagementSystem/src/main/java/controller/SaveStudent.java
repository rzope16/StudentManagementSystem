package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.AdminDao;
import dao.StudentDao;
import dto.Admin;
import dto.Student;

@WebServlet("/save")
@MultipartConfig(maxFileSize = 1623425)
public class SaveStudent extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Admin admin =(Admin) session.getAttribute("admin");
		if(admin!=null) {
			
		String name = req.getParameter("studentName");
		String StringPhoneNumber = req.getParameter("studentPhoneNumber");
		String email = req.getParameter("studentEmail");
	
		Part file = req.getPart("photo");
		Part filePart = req.getPart("photo");
		
		InputStream is = null;
		if(filePart != null)
			is = filePart.getInputStream();
		
		byte[] data = new byte[is.available()]; 
		is.read(data);
		
		long PhoneNumber = Long.parseLong(StringPhoneNumber);
		
		ServletContext context = getServletContext();
		String fee = context.getInitParameter("StudentFee");
		
		double studentFee = Double.parseDouble(fee);
		
		Student student = new Student();
		student.setStudentName(name);
		student.setStudentPhoneNumber(PhoneNumber);
		student.setStudentEmail(email);
		student.setStudentFee(studentFee);
		student.setAdmin(admin);
		student.setInputStream(data);
		
		new StudentDao().saveStudent(student);
		
		List<Student> students = admin.getStudents();
		students.add(student);
		new AdminDao().updateAdmin(admin);
		
		resp.sendRedirect("Dashboard.jsp");
		}else {
			resp.sendRedirect("AdminLogin.jsp");
		}
	}
}
