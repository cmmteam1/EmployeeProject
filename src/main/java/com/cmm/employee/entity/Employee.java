package com.cmm.employee.entity;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name = "employee")
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "employee_id")
	private String employee_id;
	
	@Column(name = "emplyoee_name")
	private String employeeName;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "date_of_birth")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateOfBirth;
	
	@Column(name = "age")
	private Integer age;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "note")
	private String note;
	
	@Column(name = "del_flg")
	private Integer del_flg;
	   
    @Column(name="CreateDateTime",columnDefinition="TIMESTAMP")      
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm:ss")
    private Date CreateDateTime;
    
	@Column(name = "UpdatedDateTime")
	private Timestamp updatedDateTime;

	@OneToMany(mappedBy = "employeeAttendance")
	private Set<EmployeeAttendance> employee_attendances;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Integer getDel_flg() {
		return del_flg;
	}

	public void setDel_flg(Integer del_flg) {
		this.del_flg = del_flg;
	}

	public Date getCreateDateTime() {
		return CreateDateTime;
	}

	public void setCreateDateTime(Date createDateTime) {
		CreateDateTime = createDateTime;
	}

	public Timestamp getUpdatedDateTime() {
		return updatedDateTime;
	}

	public void setUpdatedDateTime(Timestamp updatedDateTime) {
		this.updatedDateTime = updatedDateTime;
	}

	public Set<EmployeeAttendance> getEmployee_attendances() {
		return employee_attendances;
	}

	public void setEmployee_attendances(Set<EmployeeAttendance> employee_attendances) {
		this.employee_attendances = employee_attendances;
	}

}