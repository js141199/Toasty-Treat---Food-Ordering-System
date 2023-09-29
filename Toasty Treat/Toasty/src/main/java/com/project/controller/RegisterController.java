package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.RegisterVO;
import com.project.service.LoginService;
import com.project.service.RegisterService;
import com.project.utils.Basemethods;

@Controller
public class RegisterController {

	@Autowired
	RegisterService registerService;
	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView loadRegister() {

		return new ModelAndView("register", "registerVO", new RegisterVO());
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView goToHomePage(@ModelAttribute RegisterVO registerVO, LoginVO loginVO) {

		//String password = Basemethods.generatePassword();
//		Basemethods.sendMail(registerVO.getLoginVO().getUsername(), password, registerVO.getCompanyName());

		loginVO.setUsername(registerVO.getLoginVO().getUsername());
		loginVO.setPassword(registerVO.getLoginVO().getPassword());
		loginVO.setEnabled("0");
		loginVO.setRole("ROLE_COMPANY");
		loginVO.setStatus(true);
		this.loginService.insertLogin(loginVO);

		registerVO.setLoginVO(loginVO);
		this.registerService.insertRegister(registerVO);

	return new ModelAndView("redirect:/login");
	}
	/*
	 * @RequestMapping(value = "/checkotp", method = RequestMethod.POST) public
	 * ModelAndView insertotp(@ModelAttribute AuthenticationVO authenticationVO)
	 * {
	 * 
	 * if(password==otp) { this.loginService.insertOTP(authenticationVO); return
	 * new ModelAndView("redirect:/password"); } else {
	 * System.out.println("invalid user"); }
	 * this.loginService.insertOTP(authenticationVO); return new
	 * ModelAndView("redirect:/password");
	 * 
	 * 
	 * }
	 */

/*	@RequestMapping(value = "/insertpassword", method = RequestMethod.POST)
	public ModelAndView insertpassword(@RequestParam int id, @ModelAttribute AuthenticationVO authenticationVO,
			LoginVO loginVO) {

		loginVO.setLoginId(id);
		loginVO.setEnabled("1");
		this.loginService.insertLogin(loginVO);
		return new ModelAndView("redirect:/register");

	}

	@RequestMapping(value = "admin/viewCompany", method = RequestMethod.GET)
	public ModelAndView viewCompany(@ModelAttribute RegisterVO registerVO, LoginVO loginVO) {

		List companyList = this.registerService.searchRegister(registerVO);

		return new ModelAndView("admin/viewCompany", "companyList", companyList);
	}*/
}
