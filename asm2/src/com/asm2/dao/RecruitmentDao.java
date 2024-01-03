package com.asm2.dao;

import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.asm2.beans.Company;
import com.asm2.beans.Recruitment;
import com.asm2.beans.User;

public class RecruitmentDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int insertRecruit(String address, String description, String experience, int quantity, String salary,
			String title, int companyId, String type, String deadline, int categoryId) {
		String sql = "INSERT INTO asm2.Recruitment (address, created_at, description, experience, quantity, salary, title, company_id, type, deadline, category_id) "
				+ "VALUES (?, CURDATE(), ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return template.update(sql, address, description, experience, quantity, salary, title, companyId, type,
				deadline, categoryId);
	}

	public List<Recruitment> getRecruitmentByName(String name) {
		String sql = "SELECT * FROM asm2.Recruitment WHERE title = ?";
		return template.query(sql, new Object[] { name }, new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
	}
	
	public List<Recruitment> getRecruitment() {
		String sql = "SELECT * FROM asm2.Recruitment";
		return template.query(sql, new Object[] {}, new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
	}
	
	public List<Recruitment> getRecruitmentByCategoryId(int categoryId) {
		String sql = "select * from asm2.Recruitment where category_id = ?";
		return template.query(sql, new Object[] { categoryId }, new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
	}

	public List<Recruitment> getRecruitmentByCompanyId(int companyId) {
	    String sql = "SELECT * FROM asm2.Recruitment WHERE company_id = ?";
	    return template.query(sql, new Object[]{companyId}, new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
	}

	public List<Recruitment> getRecruitmentSortByQuantity() {
		String sql = "SELECT * FROM asm2.Recruitment " + " WHERE deadline > CURDATE()  ORDER BY quantity DESC " + "LIMIT 3;";
		return template.query(sql, new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
	}

	public Recruitment getRecruitmentByRecruitmentId(Long recruitId) {
		try {
			String sql = "SELECT * FROM asm2.Recruitment WHERE recruit_id = ?";
			return template.queryForObject(sql, new Object[] { recruitId },
					new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
		} catch (EmptyResultDataAccessException e) {
			// Handle the case where no user was found with this name
			return null;
		}
	}
	
	public List<Recruitment> getRecruitmentByAddress(String address) {
		String sql = "SELECT * FROM asm2.Recruitment WHERE address = ?";
		return template.query(sql, new Object[] { address }, new BeanPropertyRowMapper<Recruitment>(Recruitment.class));
	}

	public void deleteRecruitmentByRecruitmentId(Long recruitId) {
		try {
			String sql = "DELETE FROM asm2.Recruitment WHERE recruit_id = ?";
			template.update(sql, new Object[] { recruitId });
		} catch (EmptyResultDataAccessException e) {
			return;
		}

	}

	public int updateRecruit(String address, String description, String experience, int quantity, String salary,
			String title, String type, String deadline, int categoryId, int recruitId) {
		String sql = "UPDATE asm2.Recruitment SET address = ?, description = ?, experience = ?, quantity = ?, salary = ?, title = ?, type = ?, deadline = ?, category_id = ? WHERE recruit_id = ?";
		return template.update(sql, address, description, experience, quantity, salary, title, type, deadline,
				categoryId, recruitId);
	}

}
