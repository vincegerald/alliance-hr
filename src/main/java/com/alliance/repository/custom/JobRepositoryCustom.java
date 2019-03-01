package com.alliance.repository.custom;

import java.util.List;

import com.alliance.entity.JobsEntity;
import com.alliance.model.Jobs;

public interface JobRepositoryCustom {
	
	public Object createJob(JobsEntity jobsEntity);
	
	public Object updateJob(JobsEntity jobsEntity);
	
	public boolean deleteJob(int id);
	
	//public List<JobsEntity> getJobList();

}
