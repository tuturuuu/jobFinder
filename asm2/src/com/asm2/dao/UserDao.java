package com.asm2.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.asm2.beans.Recruitment;
import com.asm2.beans.User;

public class UserDao {
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<User> getAllUsers() {
	    String sql = "SELECT * FROM User";
	    return template.query(
	        sql,
	        new BeanPropertyRowMapper<User>(User.class));
	}
	
	public User getUserByEmail(String email, String password) {
		try {
		    String sql = "SELECT full_name, role, id, company_id FROM User WHERE email = ? AND password = ?";
		    return template.queryForObject(
		        sql,
		        new Object[]{email, password},
		        (resultSet, rowNum) -> {
		            User user = new User();
		            user.setFullName(resultSet.getString("full_name"));
		            user.setRole(resultSet.getInt("role"));
		            user.setId(resultSet.getInt("id"));
		            // Check if company_id is null and set it to -1 if true
		            Integer companyId = resultSet.getObject("company_id", Integer.class);
		            user.setCompanyId(companyId != null ? companyId : -1);
		            
		            return user;
		        }
		    );
		} catch (EmptyResultDataAccessException e) {
		    // Handle the case where no user was found with this email/password
		    return null;
		} catch (DataAccessException e) {
		    // Handle other data access exceptions, e.g., handling null company_id
		    e.printStackTrace(); // Replace with proper error handling
		    return null;
		}
	}
	public User getUserById(int id) {
	    try {
			    String sql = "SELECT address, description, email, full_name, image, phone_number, cv, cv_name FROM User WHERE id = ?";
			    return template.queryForObject(
			        sql,
			        new Object[]{id},
			        (resultSet, rowNum) -> {
			            User user = new User();
			            user.setFullName(resultSet.getString("full_name"));
			            user.setAddress(resultSet.getString("address"));
			            user.setDescription(resultSet.getString("description"));
			            user.setEmail(resultSet.getString("email"));
			            user.setImage(resultSet.getString("image"));
			            user.setPhoneNumber(resultSet.getString("phone_number"));
			            user.setCv(resultSet.getBytes("cv"));
			            user.setCvName(resultSet.getString("cv_name"));
			            user.setId(id);
			            return user;
			        }
			    );
			} catch (EmptyResultDataAccessException e) {
			    // Handle the case where no user was found with this email/password
			    return null;
			} catch (DataAccessException e) {
			    // Handle other data access exceptions, e.g., handling null company_id
			    e.printStackTrace(); // Replace with proper error handling
			    return null;
			}
	}

	public int insertUser(String email, String fullName, String password, String role) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO User (email, full_name, password, role) VALUES (? , ? , ? , ? )";
		return template.update(sql, email, fullName, password, role);
	}

	public int updateUser(User user, int userId) {
		String email = user.getEmail();
		String fullName = user.getFullName();
		String address = user.getAddress();
		String phoneNumber = user.getPhoneNumber();
		String 	description = user.getDescription();
		String sql ="UPDATE asm2.User "
						+ "SET email = ?, full_name = ?,  address = ?, phone_number = ?, description = ? "
						+ "WHERE id = ?";
		return template.update(sql, email, fullName, address, phoneNumber, description, userId);
	}

	public int updateCompanyId(int companyId, int id) {
		String sql ="UPDATE asm2.User "
				+ "SET company_id = ? "
				+ "WHERE id = ?";
		return template.update(sql, companyId, id);
	}
	
	
	public int setAvatar(String base64Image, int id) {
		String sql ="UPDATE asm2.User "
				+ "SET  image = ?"
				+ "WHERE id = ?";
		return template.update(sql, base64Image, Integer.toString(id));
	}

	public int updateCv(byte[] data, String cvName, int id) {
		String sql = "UPDATE asm2.User SET cv = ?, cv_name = ? WHERE id = ?";
		return template.update(sql, data, cvName, id);
	}

	public List<User> getUserByName(String userName) {
		String sql = "SELECT id, image, full_name, description, address, email, cv, cv_name FROM asm2.User WHERE full_name = ?";
		return template.query(sql, new Object[] { userName }, new BeanPropertyRowMapper<User>(User.class));
	}

}
