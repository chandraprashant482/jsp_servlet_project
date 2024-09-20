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


@WebServlet("/createRegistration")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegistrationController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/CreateRegistration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession(false);
			session.setMaxInactiveInterval(20);
			if (session.getAttribute("email")!=null) {
				
			
				String name=request.getParameter("firstname");
				String email=request.getParameter("email");
				String mobile=request.getParameter("mobile");
				
				DAOServiceIMPL service =new DAOServiceIMPL();
				service.connectdb();
				service.createRegistration(name, email, mobile);
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/CreateRegistration.jsp");
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/CreateRegistration.jsp");
			rd.forward(request, response);
		}
	}

}
