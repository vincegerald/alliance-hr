package com.alliance.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "job", schema = "hr_db", catalog = "")

public class JobsEntity {
	
	
	private int job_id, all_id;
	private String job_title, job_desc, job_location, job_salary, job_qualifications, job_status;
	
	@Id
	@Column(name = "job_id", nullable = false, length = 11)
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
		
	@Column(name = "all_id", nullable = false, length = 11)
	public int getAll_id() {
		return all_id;
	}
	public void setAll_id(int all_id) {
		this.all_id = all_id;
	}
	@Column(name = "job_title", nullable = false, length = 255)
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	@Column(name = "job_desc", nullable = false, length = 255)
	public String getJob_desc() {
		return job_desc;
	}
	public void setJob_desc(String job_desc) {
		this.job_desc = job_desc;
	}
	@Column(name = "job_location", nullable = false, length = 255)
	public String getJob_location() {
		return job_location;
	}
	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}
	
	@Column(name = "job_qualification", nullable = false, length = 255)	
	public String getJob_qualifications() {
		return job_qualifications;
	}
	public void setJob_qualifications(String job_qualifications) {
		this.job_qualifications = job_qualifications;
	}
	
	@Column(name = "job_salary", nullable = false, length = 100)
	public String getJob_salary() {
		return job_salary;
	}
	public void setJob_salary(String job_salary) {
		this.job_salary = job_salary;
	}
	
	@Column(name = "job_status", nullable = false, length = 100)
	public String getJob_status() {
		return job_status;
	}
	public void setJob_status(String job_status) {
		this.job_status = job_status;
	}
	
}
