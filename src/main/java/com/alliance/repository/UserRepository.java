package com.alliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.alliance.entity.UserEntity;
import com.alliance.repository.custom.UserCustomRepository;


@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> , UserCustomRepository{
	
	

}
