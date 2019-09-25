package com.cmm.employeeAttendance.controller;

import com.cmm.employee.entity.EmployeeAttendance;
import com.cmm.employeeAttendance.service.EmployeeAttendanceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee_attendance")  
public class employeeAttendanceController{
	@Autowired
	private EmployeeAttendanceService employeeAttendanceService;
    @RequestMapping("/empAttend")  
    public String employeeAttendanceForm(Model emp) {
		 EmployeeAttendance employeeAttendance=new EmployeeAttendance();
	     emp.addAttribute("employeeAttendance", employeeAttendance);
		return "employee-attendance-form";
    }
    
    @PostMapping("/save")
    public String saveEmpAttend(@ModelAttribute("employeeAttendance")EmployeeAttendance employeeAttendance) {
    	employeeAttendanceService.saveEmpAttend(employeeAttendance);
		return "showemployee";
    }
    
}
