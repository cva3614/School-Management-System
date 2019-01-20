package com.crud.operation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.operation.models.User;

import com.crud.operation.daos.UserDao;

@Controller
public class LoginController {
	
	@Autowired
	private UserDao udao;
	
	@RequestMapping(value="/userLogin", method=RequestMethod.GET)
	public String getUserLoginForm() {
		return "login";
	}
	
	@RequestMapping(value="/userLogin", method=RequestMethod.POST)
	public String userLogin(@ModelAttribute User u, Model model) {
		
		if(udao.login(u.getUsername(), u.getPassword())){
			
			model.addAttribute("user", u.getUsername());
			return "../../index";
		}
		return "login";
	}

}
