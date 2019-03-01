package com.alliance.repository.custom;

import java.util.List;

import com.alliance.entity.ApplicantEntity;
import com.alliance.model.Applicant;

public interface ApplicantRepositoryCustom {
	
	public boolean createApplicant(ApplicantEntity applicantEntity);
	
	public boolean updateApplicant(ApplicantEntity applicantEntity);
	
	public boolean deleteApplicant(int id);
	
	public List<ApplicantEntity> getApplicantList();

}
