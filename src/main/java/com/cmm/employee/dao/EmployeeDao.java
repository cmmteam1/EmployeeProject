package com.cmm.employee.dao;

import java.util.List;

import com.cmm.employee.entity.Employee;

public interface EmployeeDao {
	public void saveEmployee(Employee employee);

	public List<Employee> getEmployees();

	public void deleteEmployees(int theId);
	Employee getEmployee(int theId);
	 public boolean checkLogin(String  employee_id, String password);




}


