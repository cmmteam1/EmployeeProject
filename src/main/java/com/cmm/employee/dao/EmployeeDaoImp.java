package com.cmm.employee.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.cmm.employee.entity.Employee;

@Repository
public class EmployeeDaoImp implements EmployeeDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveEmployee(Employee employee) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(employee);
	}

	@Override
    public List<Employee> getEmployees() {
        
         Session session = sessionFactory.getCurrentSession();
           String hql = "FROM Employee";
           Query query = session.createQuery(hql);
           return query.getResultList();
    }

	@Override
	public void deleteEmployees(int theId) {
		// TODO Auto-generated method stub
//		 Session session = sessionFactory.getCurrentSession();
//         Employee employee = session.byId(Employee.class).load(theId);
//         session.delete(employee);
        Employee employee=(Employee)sessionFactory.getCurrentSession().load(Employee.class,theId);
        if(null !=employee)
        	this.sessionFactory.getCurrentSession().delete(employee);
		
	}

	
	
	@Override
	public Employee getEmployee(int theId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Employee employee=session.get(Employee.class, theId);
		return employee;
	}


	@Override
	public boolean checkLogin(@RequestParam(" employee_id")String  employee_id, @RequestParam("password")String password) {
		Session session = sessionFactory.openSession();
		boolean userFound = false;
		String SQL_QUERY ="select emp from Employee emp where emp.employee_id like : employee_id and emp.password like :password";
		Query query = sessionFactory.getCurrentSession().createQuery(SQL_QUERY);
		
		query.setParameter("employee_id", "%" +  employee_id + "%");
		query.setParameter("password","%" + password + "%");
		List list = query.list();
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		session.close();
		return userFound;   
	}
	}




	