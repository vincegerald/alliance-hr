package com.alliance.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alliance.entity.UserEntity;
import com.alliance.model.User;
import com.alliance.repository.UserRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserService {
	
	@Autowired
	UserRepository userRepository;
	
	public boolean createUser(User user) {
		
		UserEntity userEntity = new UserEntity();
		
		userEntity.setUserName(user.getName());
		
		userRepository.createUser(userEntity);
		
		return true;
	}
	

}
