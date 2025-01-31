package com.user.servlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.entity.*;

import java.io.IOException;
import com.dao.UserDao;
import com.db.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

@SuppressWarnings("serial")
@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName=req.getParameter("fullName");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			User u=new User(fullName,email,password);
			
			UserDao dao=new UserDao(DBConnect.getConn());
			
			HttpSession session =req.getSession();
			
			boolean f=dao.register(u);
			
			if(f)
			{
				session.setAttribute("sucMsg","Register Successfully");
				resp.sendRedirect("SignUp.jsp");
			}
			else {
				session.setAttribute("errorMsg","Something is wrong on server");
				resp.sendRedirect("SignUp.jsp");
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}

	
}
