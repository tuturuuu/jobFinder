package com.asm2.controllers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.asm2.beans.Application;
import com.asm2.beans.Company;
import com.asm2.beans.Recruitment;
import com.asm2.beans.User;
import com.asm2.dao.ApplicationDao;
import com.asm2.dao.CompanyDao;
import com.asm2.dao.RecruitmentDao;
import com.asm2.dao.UserDao;

@Controller
@RequestMapping("/user/")
@MultipartConfig
public class UserController {
    
    @Autowired
    private UserDao userDao;
    @Autowired
    private CompanyDao companyDao;
    @Autowired
    private ApplicationDao applicationDao;
    @Autowired
    private RecruitmentDao recruitmentDao;
    
    
    @RequestMapping("/update-profile")
    public String updateProfile(@ModelAttribute("the_user") User user, Model model, HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	int userId = (int) session.getAttribute("user_id");
    	
        userDao.updateUser(user, userId);
        
        return "redirect:/user/profile";
    }
    
    @RequestMapping("/update-company")
    public String updateCompany(@ModelAttribute("the_company") Company company, HttpServletRequest request) throws SQLException {
    	HttpSession session = request.getSession();
    	int companyId = (int) session.getAttribute("company_id");
    	int userId = (int)session.getAttribute("user_id");
    	
    	if(companyId == -1) {
    		Company  temp = new Company();
    		companyId = companyDao.insertCompany( temp);
    		userDao.updateCompanyId(companyId, userId);
    		session.setAttribute("company_id", companyId);
    	}
		companyDao.updateCompany(company, companyId);
    	return "redirect:/user/profile";
    }

    @RequestMapping("/profile")
    public String showProfile(Model model, HttpServletRequest request) {
    	
    	Company company = new Company();
        HttpSession session = request.getSession();
        int id = (int) session.getAttribute("user_id");
        int companyId = (int) session.getAttribute("company_id");
        User user = userDao.getUserById(id);
        if(companyId != -1) {
        	company = companyDao.getCompanyById(companyId);
        } 
        
        model.addAttribute("avatar", user.getImage());
        model.addAttribute("logo", company.getLogo());
        model.addAttribute("the_user", user);
        model.addAttribute("the_company", company);
        
        return "profile";
    }

    @PostMapping("/uploadAvatar")
    public String uploadImage(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
    	System.out.println(file.getContentType());
    	System.out.println(file.getOriginalFilename());
    	
    	HttpSession session = request.getSession();
    	int id = (int) session.getAttribute("user_id");
    	
    	// Lay byte cua file anh -> Luu len co so du lieu
    	byte[] bytes = file.getBytes();
    	String base64Image = Base64.getEncoder().encodeToString(bytes);
    	userDao.setAvatar(base64Image, id);
        
    	return "redirect:/user/profile";
    }
    
    @PostMapping("/uploadLogo")
    public String uploadLogo(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws IOException, SQLException {
    	System.out.println(file.getContentType());
    	System.out.println(file.getOriginalFilename());
    	
    	byte[] bytes = file.getBytes();
    	String base64Image = Base64.getEncoder().encodeToString(bytes);
    	
    	HttpSession session = request.getSession();
    	int companyId = (int) session.getAttribute("company_id");
    	int userId = (int)session.getAttribute("user_id");
    	
    	// Neu chua co companyId --> Tao mot company moi 
    	if(companyId == -1) {
    		Company company = new Company();
    		company.setLogo(base64Image);
    		companyId = companyDao.insertCompany(company);
    		userDao.updateCompanyId(companyId, userId);
    		session.setAttribute("company_id", companyId);
    	}
        companyDao.setLogo(base64Image, companyId);
    	
    	return "redirect:/user/profile";
    }
    
    @PostMapping("/uploadCv")
    public String uploadCv(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	int userId = (int) session.getAttribute("user_id");
    	
    	System.out.println(file.getContentType());
    	System.out.println(file.getOriginalFilename());
    	
    	byte[] data = file.getBytes();
    	userDao.updateCv(data, file.getOriginalFilename(), userId);
    	
    	return "redirect:/user/profile";
    }
    
    /*
     * Search user dua tren full_name
     */
    @GetMapping("/search")
    public String searchUser(HttpServletRequest request, Model model) {
    	String userName = request.getParameter("keySearch");
    	List<User> users = userDao.getUserByName(userName);
    	model.addAttribute("users", users);
    	model.addAttribute("success", true);
    	return "result-search-user";
    }
    
    @GetMapping("/getCv/{userId}")
    public void getCv(@PathVariable int userId, HttpServletResponse response, Model model) throws IOException {
    	User user = userDao.getUserById(userId);
    	
    	response.setContentType("application/pdf");
    	String filename = user.getCvName();  // Adjust as needed
    
    	response.setHeader("Content-Disposition", "attachment; filename=" + filename);
    	ServletOutputStream out = response.getOutputStream();
    	out.write(user.getCv());  // cvData is the byte array retrieved from the database
    	out.close();
    	
    	model.addAttribute("success", false);
    }
    
    @PostMapping("/apply-job")
    public String applyJob(HttpServletRequest request, @RequestParam(value = "new_file", required = false) CommonsMultipartFile file) {
    	String cvCategory = request.getParameter("cv_category");
    	String introduction = request.getParameter("introduction");
    	String recruitId = request.getParameter("recruit_id");
    	String keySearch = request.getParameter("key_search");
    	String typeSearch = request.getParameter("type_search");
    	String destination = null;
    	if(typeSearch != null) {
    		// Redirect ve trang truoc do 
    		switch (typeSearch) {
    		case "search-address":
    			destination = "redirect:/recruitment/searchaddress?keySearch=" + keySearch;
    		case "home":
    			destination = "redirect:/";
    		}
    	} else {
    		destination = "redirect:/recruitment/search?keySearch=" + keySearch;
    	}
    	
    	HttpSession session = request.getSession();
    	int userId = (int) session.getAttribute("user_id");
    	if(cvCategory != null) {
    		// Neu nguoi dung chon cv moi --> update cv 
	    	if(cvCategory.equals("2")) {
	    		userDao.updateCv(file.getBytes(), file.getOriginalFilename(), userId);
	    	} 
    	}
    		applicationDao.insertApplication(recruitId, Integer.toString(userId) , introduction);
    		return destination ; // Append keySearch to the redirect URL
    }
    
    @GetMapping("/approveCv/{applicationId}/{recruitId}")
    public String approveCv(@PathVariable  int applicationId, @PathVariable int recruitId, Model model ) {
    	applicationDao.setStatus(applicationId);
    	return "redirect:/recruitment/job-details/"+Integer.toString(recruitId);
    }
    
    @GetMapping("/list-apply-job")
    public String listApplyJob(Model model, HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	Integer userId = (Integer) session.getAttribute("user_id");
    	
    	List<Application> applications = applicationDao.getApplicationByUserId(userId);
    	List<Recruitment> recruitments = new ArrayList<>();
    	List<Integer> status = new ArrayList<>();
    	
    	for(int i = 0; i < applications.size(); i ++) {
    		recruitments.add(recruitmentDao.getRecruitmentByRecruitmentId((long) applications.get(i).getRecruitmentId()));
			if (userId != null) {
				status.add(applicationDao.getStatus(recruitments.get(i).getRecruitId(), userId));
			}
    	}
    	
    	model.addAttribute("applications", applications);
    	model.addAttribute("recruitments", recruitments);
    	model.addAttribute("status", status);
    	
    	return "list-apply-job";
    }
}
