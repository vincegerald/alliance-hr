package com.alliance.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.alliance.entity.Customer;

@Controller(value = "adminApplicantsController")
@RequestMapping(value = "/admin-applicants")

public class AdminApplicantsController {

	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "admin/admin-applicants";
	}
}
