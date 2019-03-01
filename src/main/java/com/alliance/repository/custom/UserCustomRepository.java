package com.alliance.repository.custom;

import java.util.List;

import com.alliance.entity.UserEntity;
import com.alliance.model.User;

public interface UserCustomRepository {
	public boolean createUser(UserEntity user);
	
	public boolean updateUser(UserEntity user);
	
	public boolean deleteUser(int id);
	
	public List<User> getUserList();
}
