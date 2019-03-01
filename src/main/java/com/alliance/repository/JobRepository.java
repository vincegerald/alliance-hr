package com.alliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.alliance.entity.JobsEntity;
import com.alliance.model.Jobs;
import com.alliance.repository.custom.JobRepositoryCustom;

@Repository("jobRepository")
public interface JobRepository extends JpaRepository<JobsEntity, Integer>, JobRepositoryCustom{
	
	
	@Query("select j from JobsEntity j")
	List<JobsEntity> getJobList();
	
	
	
}
