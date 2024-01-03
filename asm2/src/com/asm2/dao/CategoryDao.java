package com.asm2.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.mysql.cj.protocol.Resultset;

public class CategoryDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		  this.template = template;
	}
	
	public LinkedHashMap<Integer, String> getCategoryNames() throws SQLException {
		  String sql = "SELECT category_name, category_id FROM asm2.Category";
		  Connection connection = template.getDataSource().getConnection();
		  Statement statement = connection.createStatement();
		  ResultSet rs =  statement.executeQuery(sql);
		  LinkedHashMap<Integer, String> map = new LinkedHashMap<Integer, String>();
		  while(rs.next()) {
			  map.put( rs.getInt("category_id"), rs.getString("category_name"));
		  }
		  
		  return map;
		}

	public List<String> getCategoryWithRecruitTimes(List<Integer> recruitTime) throws SQLException {
		List<String> categoryName = new ArrayList<String>();
		
		Connection connection = template.getDataSource().getConnection();
		String sql = " SELECT asm2.Category.category_id, asm2.Category.category_name, COUNT(*) AS row_count "
				+ "FROM asm2.Category "
				+ "INNER JOIN asm2.Recruitment ON asm2.Category.category_id = asm2.Recruitment.category_id "
				+ "GROUP BY asm2.Category.category_id "
				+ "ORDER BY row_count DESC "
				+ "LIMIT 4";
		Statement myStmt = connection.createStatement();
		ResultSet resultSet = myStmt.executeQuery(sql);
		
		while(resultSet.next()) {
			categoryName.add(resultSet.getString("category_name"));
			recruitTime.add(resultSet.getInt("row_count"));
		}
		
		return categoryName;
	}
}
