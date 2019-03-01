package com.alliance.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alliance.entity.ApplicantEntity;
import com.alliance.model.Applicant;
import com.alliance.repository.ApplicantRepository;;

@Service
@Transactional(rollbackFor = Exception.class)
public class ApplicantService {
	
	@Autowired
	ApplicantRepository applicantRepository;
	
	public Object createApplicant(Applicant applicant) {
		
		ApplicantEntity applicantEntity = new ApplicantEntity();
		
		applicantEntity.setAppFname(applicant.getAppFname());
		applicantEntity.setAppLname(applicant.getAppLname());
		applicantEntity.setAppEmail(applicant.getAppEmail());
		applicantEntity.setAppNumber(applicant.getAppNumber());
		applicantEntity.setAppAddress(applicant.getAppAddress());
		applicantEntity.setAppPassword(applicant.getAppPassword());
		
		
		
		return applicantRepository.createApplicant(applicantEntity);
	}
	
	public ApplicantEntity getApplicantByEmailAndPassword(String email, String password) {
		
		return applicantRepository.getApplicantByEmailAndPassword(email, password);
		
	}
	

}
