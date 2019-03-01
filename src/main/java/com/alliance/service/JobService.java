package com.alliance.service;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alliance.entity.JobsEntity;
import com.alliance.model.Jobs;
import com.alliance.repository.JobRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class JobService {
	
	@Autowired
	JobRepository jobRepository;
	
	public Object createJob(Jobs job) {
		
		JobsEntity jobsEntity = new JobsEntity();
		
		
		jobsEntity.setJob_desc(job.getJob_desc());
		jobsEntity.setJob_location(job.getJob_location());
		jobsEntity.setJob_qualifications(job.getJob_qualifications());
		jobsEntity.setJob_salary(job.getJob_salary());
		jobsEntity.setJob_status(job.getJob_status());
		jobsEntity.setJob_title(job.getJob_title());
		jobsEntity.setAll_id(job.getAll_id());
		
		return jobRepository.createJob(jobsEntity);
		
	}
	
	public List<JobsEntity> getJobList(){
		
		return jobRepository.getJobList();
		
	}
	
	
	
		

}
