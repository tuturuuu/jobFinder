package com.asm2.dao;

import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.asm2.beans.Application;
import com.asm2.beans.Company;

public class ApplicationDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		  this.template = template;
	}
	
	public int insertApplication(String recruitmentId, String userId, String introduction) {
		String sql = "INSERT INTO asm2.Application "
				+ "(created_at, recruitment_id, user_id, introduction) "
				+ "VALUES (CURDATE(), ?, ?, ?)";
		return template.update(sql, recruitmentId, userId, introduction);
	}
	
	public List<Application> getApplicationByRecruitmentId(Long recruitId) {
		String sql = "select * from asm2.Application where recruitment_id = ?;";
		return template.query(sql, new Object[] { recruitId }, new BeanPropertyRowMapper<Application>(Application.class));
	}
	
	public int setStatus(int applicationId) {
		String sql ="UPDATE asm2.Application "
				+ "SET  status = ? "
				+ "WHERE application_id = ?";
		return template.update(sql, 0, applicationId);
	}
	
	public int getStatus(int recruitmentId, int userId) {
	    try {
		String sql = "SELECT status FROM asm2.Application WHERE recruitment_id = ? AND user_id = ?";
	    return template.queryForObject(
	            sql,
	            new Object[]{recruitmentId, userId},
	            Integer.class);
		} catch (EmptyResultDataAccessException e) {
			return -1;
		}
	}
	
	public List<Application> getApplicationByUserId(int userId) {
		String sql = "select * from asm2.Application where user_id = ?;";
		return template.query(sql, new Object[] { userId }, new BeanPropertyRowMapper<Application>(Application.class));
	}
	
}
