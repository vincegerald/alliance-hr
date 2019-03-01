package com.alliance.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alliance.model.User;
import com.alliance.service.UserService;

@Controller(value = "userApiController")
@RequestMapping(value = "/user/")
public class UserController {
	
    @Autowired
    UserService userService;
	
	@RequestMapping(method = RequestMethod.POST, value = "create")
	public boolean addUser(User user) {
	
		//System.out.println(user);
		userService.createUser(user);
		return true;
		
	}

}
