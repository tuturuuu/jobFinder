package com.asm2.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm2.beans.Company;
import com.asm2.beans.Recruitment;
import com.asm2.beans.User;
import com.asm2.dao.ApplicationDao;
import com.asm2.dao.CategoryDao;
import com.asm2.dao.CompanyDao;
import com.asm2.dao.RecruitmentDao;
import com.asm2.dao.UserDao;

@Controller
public class MainPageController {
	@Autowired
	RecruitmentDao recruitDao;
	@Autowired
	CompanyDao companyDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	ApplicationDao applicationDao;

	@RequestMapping("/")
	public String showMainPage(Model model, HttpServletRequest request) throws SQLException {
		HttpSession session = request.getSession();
		Integer userId = (Integer) session.getAttribute("user_id");
		// Lay cac recruitment pho bien va chua het deadline
		List<Recruitment> recruitments = recruitDao.getRecruitmentSortByQuantity();

		List<Company> companies = new ArrayList<>();
		List<Integer> status = new ArrayList<>();
		
		for (int i = 0; i < recruitments.size(); i++) {
			//Lay cong ti cua nhung recruitment pho bien
			Company company = companyDao.getCompanyById(recruitments.get(i).getCompanyId());
			companies.add(company);
			if (userId != null) {
				// Lay status cua recruitment pho bien
				status.add(applicationDao.getStatus(recruitments.get(i).getRecruitId(), userId));
			}
		}

		List<Integer> recruitTimes = new ArrayList<Integer>();
		List<String> categoryName = categoryDao.getCategoryWithRecruitTimes(recruitTimes);

		model.addAttribute("recruitments", recruitments);
		model.addAttribute("companies", companies);
		model.addAttribute("categories", categoryName);
		model.addAttribute("recruitTimes", recruitTimes);
		model.addAttribute("status", status);

		return "home";
	}
}
