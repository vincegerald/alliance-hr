package com.alliance.repository.custom.impl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;

import com.alliance.entity.ApplicantEntity;
import com.alliance.entity.JobsEntity;
import com.alliance.repository.custom.JobRepositoryCustom;


public class JobRepositoryImpl implements JobRepositoryCustom {

	@Autowired
	EntityManager entityManager;


	@Override
	public Object createJob(JobsEntity jobsEntity) {
		// TODO Auto-generated method stub
		entityManager.persist(jobsEntity);
		return null;
	}

	@Override
	public Object updateJob(JobsEntity jobsEntity) {
		// TODO Auto-generated method stub
		entityManager.merge(jobsEntity);
		return null;
	}

	
	@Override
	public boolean deleteJob(int id) {
		// TODO Auto-generated method stub
		
		return false;
	}

//	@SuppressWarnings("unchecked")
//	@Override
//	public List<JobsEntity> getJobList() {
//		List<JobsEntity> jobList = new ArrayList<>();
//		StringBuilder builder = new StringBuilder("from JobsEntity");
//		Query statement = entityManager.createQuery(builder.toString());
//		jobList = statement.getResultList();
//		return jobList;
//	}
	


	

}
