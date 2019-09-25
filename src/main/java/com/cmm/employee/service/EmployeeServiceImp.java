package com.cmm.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.cmm.employee.dao.EmployeeDao;
import com.cmm.employee.entity.Employee;
@Service
public class EmployeeServiceImp implements EmployeeService {
	@Autowired
	private EmployeeDao employeeDao;
	@Transactional
	public void saveEmp(Employee employee) {
		// TODO Auto-generated method stub
		employeeDao.saveEmployee(employee);
	}

	@Transactional
	public List<Employee> getEmployees() {
		// TODO Auto-generated method stub
		return employeeDao.getEmployees();
	}

	@Transactional
	public void deleteEmp(int theId) {
		// TODO Auto-generated method stub
		 employeeDao.deleteEmployees(theId);
		
	}

	@Transactional
	public Employee getEmp(int theId) {
	return employeeDao.getEmployee(theId);
	}

	@Transactional
	public boolean checkLogin(@RequestParam(" employee_id")String  employee_id, @RequestParam("password")String password) {
		 return employeeDao.checkLogin( employee_id, password);
	}

}

