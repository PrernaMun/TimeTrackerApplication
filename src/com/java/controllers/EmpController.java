package com.java.controllers;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.beans.Emp;
import com.java.dao.EmpDao;
@Controller
public class EmpController {
	@Autowired
	EmpDao dao;//will inject dao from xml file

	@RequestMapping("/empform")
	public ModelAndView showform(){
		return new ModelAndView("empform","command",new Emp());
	}
	@RequestMapping("/indexform")
	public ModelAndView showStartPage(){
		return new ModelAndView("redirect:/index.jsp");
	}

	@RequestMapping(value="/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("emp") Emp emp) throws NumberFormatException, IOException{

		Emp list =dao.save(emp);
		Emp list1=dao.getEmployees();
		list.setlEmp(list1.getlEmp());
		return new ModelAndView("viewemp","emp",list);//will redirect to viewemp request mapping
	}
	/* It provides list of employees in model object */
	@RequestMapping("/viewemp")
	public ModelAndView viewemp() throws NumberFormatException, IOException{
		Emp list=dao.getEmployees();
		return new ModelAndView("viewemp","emp",list);
	}

	@RequestMapping("/searchemp")
	public ModelAndView searchemp() throws NumberFormatException, IOException{
		return new ModelAndView("search","command",new Emp());
	}

	/* It updates model object. */
	@RequestMapping(value="/search",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("emp") Emp emp) throws NumberFormatException, IOException{

		Emp list=dao.search(emp);
		return new ModelAndView("viewemp","emp",list);
	}


}