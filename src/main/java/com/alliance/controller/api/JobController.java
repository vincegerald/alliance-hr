package com.alliance.controller.api;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.alliance.model.Jobs;
import com.alliance.service.JobService;

@Controller(value = "addJobApiController")
@RequestMapping(value = "/api/job")
public class JobController {
	
    @Autowired
    JobService jobService;
	
	@RequestMapping(method = RequestMethod.POST, value = "/addJob")
	
	public Object addJob(Jobs job){
		//System.out.println(user);
		return jobService.createJob(job);
	}
	
//	@RequestMapping(method = RequestMethod.GET)
//	public List<JobsEntity> getAllJobs() {
//		
//		List<JobsEntity> getJobList = new ArrayList<>();
//		
//		getJobList = jobService.getJobList();
//		
//		return getJobList;
//		
//	}

}
