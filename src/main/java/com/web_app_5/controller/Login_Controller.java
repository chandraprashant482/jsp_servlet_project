package com.web_app_5.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web_app_5.model.DAOServiceIMPL;

@WebServlet("/VeifyLogin")
public class Login_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Login_Controller() {
        super();
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		DAOServiceIMPL service =new DAOServiceIMPL();
		service.connectdb();
		boolean status = service.verifylogin(email, password);
		if(status)
		{
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			session.setMaxInactiveInterval(20);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/CreateRegistration.jsp");
			rd.forward(request, response);
		}else {
			request.setAttribute("error", "INVALID USERNAME/PASSWORD");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
		}
	}
	

}
