package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.*;
import dto.*;

@WebServlet("/updateAdmin")
public class UpdateAdmin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
          String email = req.getParameter("email");
          String dob = req.getParameter("dob");
          String pass =  req.getParameter("password");
          
          Admin admin = new AdminDao().getDob(dob);
          
          if(admin!=null) {
        	  
        	  admin.setAdminPassword(pass);
        	  new AdminDao().updateAdmin(admin);
          }
          else {       	  
        	  req.getRequestDispatcher("UpdateAdmin.jsp").forward(req, resp);
          } 
         resp.sendRedirect("AdminLogin.jsp");
		
	}
}
