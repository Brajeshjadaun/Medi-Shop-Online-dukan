package com.jspider.medishope_online_dukan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspider.medishope_online_dukan.dto.Admin;
import com.jspider.medishope_online_dukan.dto.User;
import com.jspider.medishope_online_dukan.serviceImplementation.AdminServiceImplementation;

@WebServlet(value = "/adminRegister")
public class AdminRegisterController extends HttpServlet {
	
	AdminServiceImplementation adminServiceImplementation = new AdminServiceImplementation();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String adminName = req.getParameter("admin_name");
		String adminEmail = req.getParameter("admin_email");
		String adminPass = req.getParameter("pass");
		String adminPassConfirm = req.getParameter("passConfirm");
		PrintWriter printWriter = resp.getWriter();
		
		if(adminPass.equals(adminPassConfirm)) {
			Admin admin = new Admin(adminName, adminEmail, adminPass);
			Admin admin2 = adminServiceImplementation.saveAdminService(admin);
			
			
			if(admin2 != null) {
				printWriter.write("<html><body><h1 style='color:green;background: none;display:flex; align-items:center;justify-content:center; position:absolute; top:70%; left:70%; z-index:5; font-size:15px;'>Signup-Successfull</h1></body></html>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("loginAdmin.jsp");
				dispatcher.include(req, resp);
			}else {
				printWriter.write("<html><body><h1 style='color:red;background: none;display:flex; align-items:center;justify-content:center; position:absolute; top:80%; left:63%; z-index:5; font-size:15px;'>Can not signup(Id already used)</h1></body></html>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("signupAdmin.jsp");
				dispatcher.include(req, resp);
			}
		}else {
			printWriter.write("<html><body><h1 style='color:red;background: none;display:flex; align-items:center;justify-content:center; position:absolute; top:80%; left:63%; z-index:5; font-size:15px;'>Can not signup(Password and Confirm Password must be same)</h1></body></html>");
			RequestDispatcher dispatcher = req.getRequestDispatcher("signupAdmin.jsp");
			dispatcher.include(req, resp);
		}
	}
}
