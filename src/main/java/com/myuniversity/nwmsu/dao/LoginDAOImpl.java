package com.myuniversity.nwmsu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.myuniversity.nwmsu.model.Login;

public class LoginDAOImpl implements LoginDAO {

	DataSource dataSource;
	JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public boolean verifyUser(Login login) {
		
		String query = "select count(*) from user where email='"+login.getEmail() +"' and inputPwd='"+login.getPwd()+"'";
		
		int n = jdbcTemplate.queryForObject(query, Integer.class);	
		
		if(n>0){
		return true;
		}
		else{
			return false;
		}
		}
	}

//		boolean userlog= false;
//
//		try {
//			Connection con = dataSource.getConnection();
//			String query = "select email, inputPwd from user where email='"+login.getEmail() +"' and inputPwd='"+login.getPwd()+"'";
//			PreparedStatement pstmt = con.prepareStatement(query);
//			pstmt.setString(1, login.getEmail());
//			pstmt.setString(2, login.getPwd());
//			
//			ResultSet rs = pstmt.executeQuery(query);
//			
//			if(rs.next()){
//			userlog=true;
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} 
//		
//		return userlog;
//		
		
	