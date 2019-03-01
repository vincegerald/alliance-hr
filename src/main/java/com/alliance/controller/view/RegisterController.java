package com.alliance.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.alliance.entity.Customer;

@Controller(value = "signupController")
@RequestMapping(value = "/signup")
public class RegisterController {

	@RequestMapping(method = RequestMethod.GET)
	public String register() {
		return "admin/signup";
	}
}
