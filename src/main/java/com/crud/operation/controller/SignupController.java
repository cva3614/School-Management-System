package com.crud.operation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.operation.daos.UserDao;
import com.crud.operation.models.User;

@Controller
public class SignupController {
	
	@Autowired
	private UserDao udao;

	@RequestMapping(value="/userSignup", method=RequestMethod.GET)
	public String getUserSignupForm() {
		return "signup";
	}
	
	@RequestMapping(value="/userSignup", method=RequestMethod.POST)
	public String userSignup(@ModelAttribute User u, Model model) {
		
		udao.signup(u);
		model.addAttribute("error", "Invalid Credentials");
		return "../../index";

	}
}
