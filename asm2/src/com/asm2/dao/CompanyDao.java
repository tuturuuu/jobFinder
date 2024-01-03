package com.asm2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import com.asm2.beans.Company;
import com.asm2.beans.User;

public class CompanyDao {	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public Company getCompanyById(int id) {
		try {
			String sql = "SELECT * FROM Company WHERE company_id = ?";
	        return template.queryForObject(
		            sql,
		            new Object[]{id},
		            new BeanPropertyRowMapper<Company>(Company.class));
		} catch (EmptyResultDataAccessException e) {
			// Handle the case where no user was found with this name
			return null;
		}
	}

	public int updateCompany(Company company, int companyId) {
		// TODO Auto-generated method stub
		String email = company.getEmail();
		String companyName = company.getCompanyName();
		String address = company.getAddress();
		String phoneNumber = company.getPhoneNumber();
		String 	description = company.getDescription();
		String sql ="UPDATE asm2.Company "
						+ "SET email = ?, company_name = ?,  address = ?, phone_number = ?, description = ? "
						+ "WHERE company_id = ?";
		return template.update(sql, email, companyName, address, phoneNumber, description, companyId);
	}

	public int setLogo(String base64Image, int id) {
		// TODO Auto-generated method stub
		String sql ="UPDATE asm2.Company "
						+ "SET logo = ? "
						+ "WHERE company_id = ?";
		return template.update(sql, base64Image, Integer.toString(id));
	}
	
	public int insertCompany(Company company) throws SQLException {
		
		Connection connection = template.getDataSource().getConnection();
		connection.setAutoCommit(false);
		String sql = "INSERT INTO asm2.Company (address, description, email, logo, company_name, phone_number, status) VALUES (?, ?, ?, ?, ?, ?, ?) ";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, company.getAddress());
		preparedStatement.setString(2, company.getDescription());
		preparedStatement.setString(3, company.getEmail());
		preparedStatement.setString(4, company.getLogo());
		preparedStatement.setString(5, company.getCompanyName());
		preparedStatement.setString(6, company.getPhoneNumber());
		preparedStatement.setInt(7, 1);
		preparedStatement.executeUpdate();
		
		sql = "SELECT LAST_INSERT_ID() AS company_id";
		preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		resultSet.next();
	    int companyId = resultSet.getInt("company_id");
	    System.out.println("Company ID: " + companyId);
		

		resultSet.close();
		connection.commit();
		preparedStatement.close();
		return companyId;
	}
}
