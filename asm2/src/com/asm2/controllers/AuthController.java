package com.asm2.controllers;

import com.asm2.beans.User;
import com.asm2.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/auth")
public class AuthController {
	@Autowired
	private UserDao userDao;
	
	@GetMapping("/")
	public String mainPage() {
		return "home";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/submitFormLogin")
	public String loginProcess(RedirectAttributes redirectAttributes, Model theModel, HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User theUser = userDao.getUserByEmail(email, password);
		
		// Tim thay user -> add user vao session
		if (theUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("full_name", theUser.getFullName());
			session.setAttribute("role", theUser.getRole());
			session.setAttribute("user_id", theUser.getId());
			session.setAttribute("company_id", theUser.getCompanyId());
			
			//Add "login_result" = true -> Thong bao dang nhap thanh cong
			redirectAttributes.addFlashAttribute("login_result", true);
			return "redirect:/";
		}
		theModel.addAttribute("login_failed", true);
		return "login";
	}

	@PostMapping("/submitFormSignUp")
	public String signUpProcess(RedirectAttributes redirectAttributes, Model theModel, HttpServletRequest request) {
		String email = request.getParameter("email");
		String fullName = request.getParameter("fullName");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		String role = request.getParameter("role_id");
		
		//Kiem tra password voi rePassword
		if (!password.equals(rePassword)) {
			theModel.addAttribute("msg_register_success", false);
			theModel.addAttribute("form_submitted", true);
			return "login";
		}
		int result = userDao.insertUser(email, fullName, password, role);
		if (result == 1) {
			theModel.addAttribute("msg_register_success", true);
		} else {
			theModel.addAttribute("msg_register_success", false);
		}
		theModel.addAttribute("form_submitted", true);
		return "login";
	}
	
	@GetMapping("/logout")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "home";
	}
}
