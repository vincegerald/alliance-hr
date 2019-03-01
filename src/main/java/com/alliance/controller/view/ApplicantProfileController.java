package com.alliance.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller(value = "applicantProfileController")
@RequestMapping(value = "/applicant-profile")
public class ApplicantProfileController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin/applicant-profile";
	}
}
