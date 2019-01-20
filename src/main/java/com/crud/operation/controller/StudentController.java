package com.crud.operation.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crud.operation.daos.StudentDao;
import com.crud.operation.models.Student;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDao sdao;
	
	
	@RequestMapping(value="/student", method=RequestMethod.GET)
	public String getStudentForm(Model model) {
		
		model.addAttribute("student" , new Student());
		 
		return "addStudentForm";
		 
	}
	
	@RequestMapping(value="/student" , method=RequestMethod.POST)
	public String saveStudent(@ModelAttribute Student s, Model model ){
		
		
		sdao.addStudent(s);
		
		model.addAttribute("slist",sdao.getAllStudent());
		
		return "../../index";
	}
	
	@RequestMapping(value="/{id}/edit", method=RequestMethod.GET)
	public String editStudent(@PathVariable("id") int id, Model model) {
		
		model.addAttribute("student" , sdao.getById(id));
		
		return "EditStudent";
	}
	
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute Student s, Model model) {
		
		sdao.updateStudent(s);
		
		model.addAttribute("slist", sdao.getAllStudent());
		
		return "../../index";
		
	}
	
	@RequestMapping(value="/{id}/delete", method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id, Model model) {
		
		sdao.deleteStudent(id);
		
		model.addAttribute("slist" , sdao.getAllStudent());
		
		return "../../index";
	}

}
