package com.myuniversity.nwmsu.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.myuniversity.nwmsu.model.Student;

public class PrincipalDAOImpl implements PrincipalDAO {

DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public ArrayList<Student> getStudentDetails() {

		ArrayList<Student> allStudentsInfo = new ArrayList<Student>();
		
		try {
			Connection con = dataSource.getConnection();
			String query = "select * from student";
			
			Statement stmt= con.createStatement();			
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()){
				Student s = new Student(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4),rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10));
				
				allStudentsInfo.add(s);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allStudentsInfo;
	}


}
