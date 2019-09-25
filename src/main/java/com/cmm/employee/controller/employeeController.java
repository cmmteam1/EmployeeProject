package com.cmm.employee.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.cmm.employee.entity.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.cmm.employee.service.EmployeeService;

@Controller
//@RequestMapping("/employee")  
public class employeeController {
	@Autowired
	private EmployeeService employeeservice;
	@GetMapping("/")
	 public String userForm(Model model) {	
	Employee employee=new Employee();
		model.addAttribute("employee", employee);
		 
	      return "LOG0001";
	   }
    @RequestMapping(value="/employee/user")  
    public String employeeForm(Model m) {
		 Employee employee=new Employee();
	     m.addAttribute("employee", employee);
		return "EMP0001";

    }
    
    @PostMapping(value="/employee/save")
    public String saveEmp(@ModelAttribute("employee")Employee employee, Model theModel) {
        employeeservice.saveEmp(employee);
        List <Employee> em =employeeservice.getEmployees();
        theModel.addAttribute("employees",em);
         return "EMP0002";
    }
    
    @GetMapping(value="/employee/employeeList")
    public String employeeList(@ModelAttribute("employee")Employee employee, Model theModel) {
        List <Employee> em =employeeservice.getEmployees();
        theModel.addAttribute("employees",em);
        return "EMP0002";
    }
    
//    @GetMapping("/delete")
//    public String deleteEmployee(@RequestParam("employeeId") int theId) {
//        employeeservice.deleteEmp(theId);
//        return "redirect:/employee/employeeList";
// }
    
    @RequestMapping(value="/employee/checkDelete", method = RequestMethod.POST)
     public String deleteEmployee(HttpServletRequest request){
    	for(String id : request.getParameterValues("id"))
    		employeeservice.deleteEmp(Integer.parseInt(id));
		return "EMP0002";
    	
    }
    
    @GetMapping(value="/employee/updateForm")
    public String ShowFormForUpdate(@RequestParam("id") int theId,Model theModel) {
    	Employee employee=employeeservice.getEmp(theId);
    	theModel.addAttribute("employee",employee);
		return "EMP0001";
     }
  //   @PostMapping("/login")
  //   public String login(@ModelAttribute("employee") @Validated Employee employee, BindingResult result, Model model) {
		// boolean empExists = employeeservice.checkLogin(employee.getEmployeeId(),employee.getPassword());
		// if(empExists) {
		// 	return "EMP0001";
		// }else {
		// 	return "dashboard";
		// }
    	 
    	
  //   }

}

//@PostMapping("/login")
//public String login(@ModelAttribute("employee") @Valid Employee employee, BindingResult result,
//		   Model model) {
//boolean userExists =employeeService.checkLogin(employee.getEmployee_id(),
// 		  employee.getPassword());
//		if(userExists){
//			return "EMP0001";
//		}else{
//	
//		return "dashboard";
//	}
//		
//   }

