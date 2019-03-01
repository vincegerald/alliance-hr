package com.alliance.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alliance.entity.ApplicantEntity;
import com.alliance.model.Applicant;
import com.alliance.service.ApplicantService;

@Controller(value = "registerApiController")
@RequestMapping(value = "/api/applicant")
public class RegisterController {
	
    @Autowired
    ApplicantService applicantService;
	
	@RequestMapping(method = RequestMethod.POST, value = "/regApplicant")
	
	public Object addApplicant(Applicant applicant) {
		//System.out.println(user);
		applicantService.createApplicant(applicant);
		return applicant;
		
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/loginApplicant")
	public ApplicantEntity getApplicantByEmailAndPassword(Applicant applicant) {
		
		return applicantService.getApplicantByEmailAndPassword(applicant.getAppEmail(), applicant.getAppPassword());
	}
	
	
	
	

}
