package com.google;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.dao.UserDao;

public class UserSignup extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname = req.getParameter("uname");
		String uid = req.getParameter("user_id");
		String upass = req.getParameter("upass");
		String city = req.getParameter("ucity");
		String mob = req.getParameter("umob");
		System.out.println("User name = "+uname);
		System.out.println("User mail id = "+uid);
		System.out.println("User password = "+upass);
		System.out.println("User city name = "+city);
		System.out.println("User mobile number = "+mob);
		boolean flag = UserDao.userRegistration(uname, uid, upass, city, mob);
		if(flag)
		{
			RequestDispatcher rd = req.getRequestDispatcher("userlogin.jsp");
			rd.forward(req, resp);
		}
		else
		{
			RequestDispatcher rd = req.getRequestDispatcher("usersignup.jsp");
			rd.forward(req, resp);
		}
	}
	
	

}
