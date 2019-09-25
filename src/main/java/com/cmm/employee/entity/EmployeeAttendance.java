package com.cmm.employee.entity;

import java.sql.Timestamp;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="employee_attendance")
public class EmployeeAttendance {
       @Id
       @GeneratedValue
       @Column(name = "id")
       private Integer id;
       
       @ManyToOne
       @JoinColumn(name="employee_id", nullable=false)
       private EmployeeAttendance employeeAttendance;
      
       @Column(name="date")
       private Date date;
       
       @Column(name="in_time_reason")
       private String inTimeReason;
       
       @Column(name="out_time_reason")
       private String outTimeReason;
       
       @Column(name="created_date_time")
       private Timestamp createdDateTime;
       
       @Column(name="updated_date_time")
       private Timestamp updatedDateTime;
      
}