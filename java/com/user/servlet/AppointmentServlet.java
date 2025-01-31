package com.user.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add_appoint")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userIdStr = req.getParameter("userId");
		String doctorIdStr = req.getParameter("doct");

		int userId = 0, doctorId = 0;

		HttpSession session = req.getSession();

		try {
		    if (userIdStr != null && !userIdStr.isEmpty()) {
		        userId = Integer.parseInt(userIdStr);
		    } else {
		        session.setAttribute("errorMsg", "User ID missing है।");
		        resp.sendRedirect("user_appointment.jsp");
		        return;
		    }

		    if (doctorIdStr != null && !doctorIdStr.isEmpty()) {
		        doctorId = Integer.parseInt(doctorIdStr);
		    } else {
		        session.setAttribute("errorMsg", "Doctor ID missing है।");
		        resp.sendRedirect("user_appointment.jsp");
		        return;
		    }
		} catch (NumberFormatException e) {
		    session.setAttribute("errorMsg", "Invalid format for User ID or Doctor ID.");
		    resp.sendRedirect("user_appointment.jsp");
		    return;
		}
		String fullName=req.getParameter("fullname");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String appoinDate=req.getParameter("appoint_date");
		String email=req.getParameter("email");
		String phNO=req.getParameter("phno");
		String diseases=req.getParameter("diseases");	
		String address=req.getParameter("address");
		
		Appointment ap=new Appointment(userId,fullName,gender,age,appoinDate,email,phNO,doctorId,diseases,address,"Pending");
		
		AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
		HttpSession session1=req.getSession();
		if(dao.addAppointment(ap))
		{
			session1.setAttribute("succMsg", "Appointment Successfully");
			resp.sendRedirect("user_appointment.jsp");
		
		}
		else {
			session1.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("user_appointment.jsp");
		}
		
	}
	

}
