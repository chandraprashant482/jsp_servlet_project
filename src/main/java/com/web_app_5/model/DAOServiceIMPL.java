package com.web_app_5.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



public class DAOServiceIMPL implements DAOService {
	private Connection con;
	private Statement stmt;

	@Override
	public void connectdb() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/junebd","root","231199");
			stmt=con.createStatement();	
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	
	@Override
	public boolean verifylogin(String email, String password) {
		try {

			ResultSet result=stmt.executeQuery("select * from login where email ='"+email+"' and password='"+password+"'");
			
			return result.next();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public void createRegistration(String name, String email, String mobile) {
		try {

			stmt.executeUpdate("insert into registration values('"+name+"','"+email+"','"+mobile+"')");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

	@Override
	public void deleteRegistration(String email) {
		try {
			stmt.executeUpdate("Delete from registration where email='"+email+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}
	

	}

	@Override
	public ResultSet listallReg() {
		try {
			return stmt.executeQuery("select * from registration");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void updateRegistration(String email, String mobile) {
		try {
			stmt.executeUpdate("update registration set mobile='"+mobile+"' where email='"+email+"'");
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

}
