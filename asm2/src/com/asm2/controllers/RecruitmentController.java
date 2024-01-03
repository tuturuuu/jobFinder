package com.asm2.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm2.beans.Application;
import com.asm2.beans.Company;
import com.asm2.beans.Recruitment;
import com.asm2.beans.User;
import com.asm2.dao.ApplicationDao;
import com.asm2.dao.CategoryDao;
import com.asm2.dao.CompanyDao;
import com.asm2.dao.RecruitmentDao;
import com.asm2.dao.UserDao;

@Controller
@RequestMapping("/recruitment/")
public class RecruitmentController {

	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private RecruitmentDao recruitmentDao;
	@Autowired
	private CompanyDao companyDao;
	@Autowired
	private ApplicationDao applicationDao;
	@Autowired
	private UserDao userDao;

	@GetMapping("/post")
	public String postJob(Model model) throws SQLException {
		LinkedHashMap<Integer, String> category = categoryDao.getCategoryNames();
		model.addAttribute("recruit", new Recruitment());
		model.addAttribute("category", category);
		return "post-job";
	}

	@PostMapping("/addRecruit")
	public String addJob(@ModelAttribute("recruit") Recruitment recruit, HttpServletRequest request, Model model) {
		System.out.println(recruit);
		HttpSession session = request.getSession();
		int companyId = (int) session.getAttribute("company_id");
		int success = recruitmentDao.insertRecruit(recruit.getAddress(), recruit.getDescription(), recruit.getExperience(),
		recruit.getQuantity(), recruit.getSalary(), recruit.getTitle(), companyId, recruit.getType(),
		recruit.getDeadline(), recruit.getCategoryId());
		
		if(success == 1) model.addAttribute("success", true);
		return "post-job";
	}

	@PostMapping("edit")
	public String editJob(@ModelAttribute("recruitment") Recruitment recruit) {
		System.out.print(recruit.getRecruitId());
		recruitmentDao.updateRecruit(recruit.getAddress(), recruit.getDescription(), recruit.getExperience(),
				recruit.getQuantity(), recruit.getSalary(), recruit.getTitle(), recruit.getType(),
				recruit.getDeadline(), recruit.getCategoryId(), recruit.getRecruitId());

		return "redirect:/recruitment/list-post";
	}

	/*
	 * Hien thi cac recruitment cua 1 cong ti
	 */
	@GetMapping("/list-post")
	public String listJob(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		int companyId = (int) session.getAttribute("company_id");
		// Lay recruit the cong ty id
		List<Recruitment> recruits = recruitmentDao.getRecruitmentByCompanyId(companyId);
		Company company = companyDao.getCompanyById(companyId);
		model.addAttribute("recruits", recruits);
		if(company != null) {
			model.addAttribute("company_name", company.getCompanyName());
		}
		return "post-list";
	}
	
	@GetMapping("/list-all-jobs")
	public String listJob(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Integer userId = (Integer) session.getAttribute("user_id");
		// Lay tat ca cac recruitment
		List<Recruitment> recruitments = recruitmentDao.getRecruitment();
		model.addAttribute("recruitments", recruitments);
		
		List<Company> companies = new ArrayList<>();
		List<Integer> status = new ArrayList<>();
		
		for (int i = 0; i < recruitments.size(); i++) {
			//Lay tat ca cac cong ty dua tren recruitment
			Company company = companyDao.getCompanyById(recruitments.get(i).getCompanyId());
			companies.add(company);
			if (userId != null) {
				//Lay status dua tren recruitment
				status.add(applicationDao.getStatus(recruitments.get(i).getRecruitId(), userId));
			}
		}
		
		model.addAttribute("recruitments", recruitments);
		model.addAttribute("companies", companies);
		model.addAttribute("status", status);
		
		return "list-all-job";
	}

	/*
	 * Lay thong tin ve mot recruitment
	 */
	@GetMapping("/job-details/{recruitId}")
	public String jobDetails(@PathVariable Long recruitId, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Integer role = (Integer) session.getAttribute("role");
		Integer userId = (Integer) session.getAttribute("user_id");
		Recruitment recruitment = recruitmentDao.getRecruitmentByRecruitmentId(recruitId);
		
		// Neu nguoi dung la User -> Hien thi relatedJobs
	    if(role == null || role == 0){
			List<Recruitment> relatedJobs = recruitmentDao.getRecruitmentByCategoryId(recruitment.getCategoryId());
			List<Company> companies = new ArrayList<>();
			List<Integer> status = new ArrayList<>();
			
			for(int i = 0; i < relatedJobs.size(); i ++) {
				companies.add(companyDao.getCompanyById(relatedJobs.get(i).getCompanyId()));
				if (userId != null) {
					status.add(applicationDao.getStatus(relatedJobs.get(i).getRecruitId(), userId));
				}
			}
			
			model.addAttribute("status", status);
			model.addAttribute("companies", companies);
			model.addAttribute("relatedJobs", relatedJobs);
			
			// Neu nguoi dung la manager --> Hien thi nhung ung cu vien da apply
	    } else if(role == 1) {
			List<Application> applications = applicationDao.getApplicationByRecruitmentId(recruitId);
			ArrayList<User> users = new ArrayList<User>();
			for (int i = 0; i < applications.size(); i++) {
			users.add(userDao.getUserById(applications.get(i).getUserId()));
		}
			model.addAttribute("applications", applications);
			model.addAttribute("users", users);
	} 

		Company company = companyDao.getCompanyById(recruitment.getCompanyId());model.addAttribute("company",company);model.addAttribute("recruitment",recruitment);
		return"detail-post";
	}

	@GetMapping("/job-edit/{recruitId}")
	public String jobEditForm(@PathVariable Long recruitId, Model model) throws SQLException {
		Recruitment recruitment = recruitmentDao.getRecruitmentByRecruitmentId(recruitId);
		model.addAttribute("recruitment", recruitment);
		LinkedHashMap<Integer, String> category = categoryDao.getCategoryNames();
		model.addAttribute("category", category);
		return "edit-job";
	}

	@GetMapping("/job-delete/{recruitId}")
	public String jobDelete(@PathVariable Long recruitId, Model model) {
		recruitmentDao.deleteRecruitmentByRecruitmentId(recruitId);
		return "redirect:/recruitment/list-post";
	}

	/*
	 * Tim kiem thong tin cua recruitment qua title
	 */
	@GetMapping("search")
	public String searchRecruitment(HttpServletRequest request, Model model) {
		String recruitName = request.getParameter("keySearch");
		HttpSession session = request.getSession();
		Integer userId = (Integer) session.getAttribute("user_id");

		List<Recruitment> recruitments = recruitmentDao.getRecruitmentByName(recruitName);

		List<Company> companies = new ArrayList<Company>();
		List<Integer> status = new ArrayList<>();

		for (int i = 0; i < recruitments.size(); i++) {
			Company company = companyDao.getCompanyById(recruitments.get(i).getCompanyId());
			companies.add(company);
			if (userId != null) {
				status.add(applicationDao.getStatus(recruitments.get(i).getRecruitId(), userId));
			}
		}

		model.addAttribute("companies", companies);
		model.addAttribute("keySearch", recruitName);
		model.addAttribute("recruitments", recruitments);
		model.addAttribute("status", status);
		return "result-search";
	}

	/*
	 * Tim recruitment qua address
	 */
	@GetMapping("/searchaddress")
	public String searchRecruitmentByAddress(HttpServletRequest request, Model model) {
		String recruitAddress = request.getParameter("keySearch");
		List<Recruitment> recruitments = recruitmentDao.getRecruitmentByAddress(recruitAddress);
		List<Company> companies = new ArrayList<Company>();

		for (int i = 0; i < recruitments.size(); i++) {
			Company company = companyDao.getCompanyById(recruitments.get(i).getCompanyId());
			companies.add(company);
		}
		model.addAttribute("companies", companies);
		model.addAttribute("keySearch", recruitAddress);
		model.addAttribute("recruitments", recruitments);
		return "result-search-address";
	}

}
