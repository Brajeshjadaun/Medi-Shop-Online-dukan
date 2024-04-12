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
		PrintWriter printWriter = resp.getWriter();
		
		if(userPass.equals(userPassConfirm)) {
			User user = new User(userName, userEmail, userPass);
			User user2 = userServiceImplementation.saveUserService(user);
			
			
			if(user2 != null) {
				printWriter.write("<html><body><h1 style='color:green;background: none;display:flex; align-items:center;justify-content:center; position:absolute; top:70%; left:70%; z-index:5; font-size:15px;'>Signup-Successfull</h1></body></html>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
				dispatcher.include(req, resp);
			}else {
				printWriter.write("<html><body><h1 style='color:red;background: none;display:flex; align-items:center;justify-content:center; position:absolute; top:80%; left:63%; z-index:5; font-size:15px;'>Can not signup(Id already used)</h1></body></html>");
				RequestDispatcher dispatcher = req.getRequestDispatcher("signup.jsp");
				dispatcher.include(req, resp);
			}
		}else {
			printWriter.write("<html><body><h1 style='color:red;background: none;display:flex; align-items:center;justify-content:center; position:absolute; top:80%; left:63%; z-index:5; font-size:15px;'>Can not signup(Password and Confirm Password must be same)</h1></body></html>");
			RequestDispatcher dispatcher = req.getRequestDispatcher("signup.jsp");
			dispatcher.include(req, resp);
		}
		
	}
	
}
