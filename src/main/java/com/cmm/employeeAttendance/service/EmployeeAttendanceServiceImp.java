package com.cmm.employeeAttendance.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmm.employee.entity.EmployeeAttendance;
import com.cmm.employeeAttendance.dao.EmployeeAttendanceDao;

@Service
public class EmployeeAttendanceServiceImp implements EmployeeAttendanceService {
    @Autowired
    private EmployeeAttendanceDao employeeAttendanceDao;
	@Transactional
	public void saveEmpAttend(EmployeeAttendance employeeAttendance) {
		// TODO Auto-generated method stub
		 employeeAttendanceDao.saveEmployeeAttendance(employeeAttendance);
	}
}


