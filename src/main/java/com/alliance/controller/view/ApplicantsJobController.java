package com.alliance.controller.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alliance.service.JobService;

//import com.alliance.entity.Customer;

@Controller(value = "applicantsJobController")
@RequestMapping(value = "/applicant-index")

public class ApplicantsJobController {
	
	@Autowired
	private JobService jobService;

	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getJobList() {
		
		ModelAndView mav = new ModelAndView("admin/applicant-index");
		mav.addObject("jobList", jobService.getJobList());
		return mav;
	}
}
