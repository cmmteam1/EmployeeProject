package com.cmm.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cmm.employee.entity.Employee;
import com.cmm.employee.service.EmployeeService;

@Controller
public class LoginController {
@Autowired
private EmployeeService employeeservice;
@PostMapping("/login")
public String login(@ModelAttribute("employee") Employee employee,
		   Model model) {

    boolean userExists =employeeservice.checkLogin(employee.getEmployee_id(),
	    		  employee.getPassword());
			if(userExists){
				return "LOG0001";
			}else{
		
			return "MNU0001";
		}
}
}
