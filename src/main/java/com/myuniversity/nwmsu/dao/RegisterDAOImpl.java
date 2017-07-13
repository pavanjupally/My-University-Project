package com.myuniversity.nwmsu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.myuniversity.nwmsu.model.Register;

public class RegisterDAOImpl implements RegisterDAO {

	DataSource dataSource;
	JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public boolean insertNewUser(Register register) {

		String query = "insert into user values (?, ?, ?, ?, ?)";

		Object[] args = new Object[] { register.getFirstName(), register.getLastName(), register.getGender(),
				register.getEmail(), register.getInputPwd() };

		int n = jdbcTemplate.update(query, args);

		if (n > 0) {
			return true;
		} else {
			return false;
		}

	}

}
