package com.alliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.alliance.entity.ApplicantEntity;
import com.alliance.repository.custom.ApplicantRepositoryCustom;

@Repository("applicantRepository")
public interface ApplicantRepository extends JpaRepository<ApplicantEntity, Integer>, ApplicantRepositoryCustom{
	
	
	 @Query("select a from ApplicantEntity a where a.appEmail = ?1 and a.appPassword = ?2")
	 ApplicantEntity getApplicantByEmailAndPassword(String email, String password);
	 
	
}
