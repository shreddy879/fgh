package com.project.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBUtil {
	Connection con=null;
	public Connection getConnection() throws SQLException, ClassNotFoundException{		
		Class.forName("oracle.jdbc.OracleDriver");
			// create the connection object
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system","system");
		return con;
	}
	
	public void closeConnection() {
		if(con!=null) {
			try {
				con.close();
				System.out.println("++ Connection to be closed ++");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}