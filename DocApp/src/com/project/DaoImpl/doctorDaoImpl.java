package com.project.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.project.dao.DBUtil;
import com.project.dao.doctorDao;
import com.project.models.Doctor;

public class doctorDaoImpl implements doctorDao{

	@Override
	public Doctor validateDoctor(String dName, String dPwd){
			Doctor doc=null;
			Connection con=null;
			try{
				DBUtil dbConn=new DBUtil();
				con=dbConn.getConnection();
				String sql="select dName,dPwd from doctor where dName=? and dPwd=?";
				PreparedStatement pstmt=con.prepareStatement(sql);
				pstmt.setString(1, dName);
				pstmt.setString(2, dPwd);
				
				ResultSet rs=pstmt.executeQuery();
				while(rs.next())
				{
					doc=new Doctor();
					doc.setdName(rs.getString("dName"));
					doc.setdPwd(rs.getString("dPwd"));
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return doc;	
		}
}
