package com.alliance.repository.custom.impl;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;

import com.alliance.entity.UserEntity;
import com.alliance.model.User;
import com.alliance.repository.custom.UserCustomRepository;


public class UserRepositoryImpl implements UserCustomRepository {

	@Autowired
	EntityManager entityManager;
	
	
//	public boolean updateUser(UserEntity user) {
//		
//		entityManager.merge(user);
//		return true;
//	}
//	
//	public boolean deleteUser(UserEntity user) {
//		
//		entityManager.remove(user);
//		
//		return true;
//	}
	

	@Override
	public boolean createUser(UserEntity user) {
		// TODO Auto-generated method stub
		entityManager.persist(user);
		return false;
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateUser(UserEntity user) {
		// TODO Auto-generated method stub
		entityManager.merge(user);
		return false;
	}

	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		entityManager.remove(id);
		return false;
	}

}
