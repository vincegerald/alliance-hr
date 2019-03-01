package com.alliance.repository.custom.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

import com.alliance.entity.ApplicantEntity;
import com.alliance.entity.JobsEntity;
import com.alliance.model.Applicant;
import com.alliance.repository.custom.ApplicantRepositoryCustom;


public class ApplicantRepositoryImpl implements ApplicantRepositoryCustom {

	@Autowired
	EntityManager entityManager;
	


	@Override
	public boolean createApplicant(ApplicantEntity applicantEntity) {
		// TODO Auto-generated method stub
		entityManager.persist(applicantEntity);
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ApplicantEntity> getApplicantList() {
		// TODO Auto-generated method stub
		List<ApplicantEntity> applicantList = new ArrayList<>();
		StringBuilder builder = new StringBuilder("from ApplicantEntity");
		Query statement = entityManager.createQuery(builder.toString());
		applicantList = statement.getResultList();
		return applicantList;
	}

	@Override
	public boolean updateApplicant(ApplicantEntity applicantEntity) {
		// TODO Auto-generated method stub
		entityManager.merge(applicantEntity);
		return false;
	}

	

	@Override
	public boolean deleteApplicant(int id) {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
