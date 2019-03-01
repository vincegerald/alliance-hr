package com.alliance.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "applicant", schema = "hr_db", catalog = "")

public class ApplicantEntity {
	
	private int appId;
	private String appFname, appLname, appEmail, appNumber, appAddress, appPassword;
	
	@Id
	@Column(name = "app_id", nullable = false, length = 11)
	public int getAppId() {
		return appId;
	}
	public void setAppId(int appId) {
		this.appId = appId;
	}
	@Column(name = "app_fname", nullable = false, length = 255)
	public String getAppFname() {
		return appFname;
	}
	public void setAppFname(String appFname) {
		this.appFname = appFname;
	}
	@Column(name = "app_lname", nullable = false, length = 255)
	public String getAppLname() {
		return appLname;
	}
	public void setAppLname(String appLname) {
		this.appLname = appLname;
	}
	@Column(name = "app_email", nullable = false, length = 255)
	public String getAppEmail() {
		return appEmail;
	}
	public void setAppEmail(String appEmail) {
		this.appEmail = appEmail;
	}
	@Column(name = "app_num", nullable = false, length = 255)
	public String getAppNumber() {
		return appNumber;
	}
	public void setAppNumber(String appNumber) {
		this.appNumber = appNumber;
	}
	@Column(name = "app_addr", nullable = false, length = 255)
	public String getAppAddress() {
		return appAddress;
	}
	public void setAppAddress(String appAddress) {
		this.appAddress = appAddress;
	}
	@Column(name = "app_pass", nullable = false, length = 255)
	public String getAppPassword() {
		return appPassword;
	}
	public void setAppPassword(String appPassword) {
		this.appPassword = appPassword;
	}
	
	
	
	

}
