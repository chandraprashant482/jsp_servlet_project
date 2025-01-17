package com.web_app_5.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web_app_5.model.DAOServiceIMPL;


@WebServlet("/fetchReg")
public class ReadRegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ReadRegController() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("email")!=null) {
			DAOServiceIMPL service =new DAOServiceIMPL();
			service.connectdb();
			ResultSet result=service.listallReg();
			request.setAttribute("result", result);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/list_registration.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
