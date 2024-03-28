package com.jspider.medishope_online_dukan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspider.medishope_online_dukan.dto.User;
import com.jspider.medishope_online_dukan.serviceImplementation.UserServiceImplementation;

@WebServlet(value = "/userRegister")
public class UserRegisterController extends HttpServlet {
	
	UserServiceImplementation userServiceImplementation = new UserServiceImplementation();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String userName = req.getParameter("user_name");
		String userEmail = req.getParameter("user_email");
		String userPass = req.getParameter("pass");
		String userPassConfirm = req.getParameter("passConfirm");
		
		if(userPass.equals(userPassConfirm)) {
			User user = new User(userName, userEmail, userPass);
			User user2 = userServiceImplementation.saveUserService(user);
			
			PrintWriter printWriter = resp.getWriter();
			
			if(user2 != null) {
				printWriter.write("<html><body><h1 style='color:green; background-color:white;display:flex; align-items:center;justify-content:center;'>Signup-Successfull</h1></body></html>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
				dispatcher.include(req, resp);
			}else {
				printWriter.write("<html><body><h1 style='color:red;background-color:white;display:flex; align-items:center;justify-content:center;'>Can not signup(Id already used)</h1></body></html>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("signup.jsp");
				dispatcher.include(req, resp);
			}
		}
		
	}
	
}
