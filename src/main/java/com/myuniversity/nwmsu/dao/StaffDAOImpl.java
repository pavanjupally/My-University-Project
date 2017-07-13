package com.myuniversity.nwmsu.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.myuniversity.nwmsu.model.Staff;

public class StaffDAOImpl implements StaffDAO {

	DataSource dataSource;
	JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public boolean insertStudentMarks(Staff staff) {
		int count=0;
		Object[][] args = new Object[20][];
		
		String[] marks = staff.getMarksStudents().split(",");
		//String forSub = staff.getSubject();
		
		for(int i=0; i<20; i++){
			String query = "update student set "+staff.getSubject()+"=? where rollNumber=?";		
			args[i]=new Object[]{marks[i], i+1};
			int n = jdbcTemplate.update(query, args[i]);
			if (n > 0){
				count++;
			}		
			
		}	

		if (count== 20) {
		
			return true;
		} else {
			return false;
		}
	}

}

