package com.alliance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.alliance.entity.Store;
import com.alliance.repository.custom.StoreRepositoryCustom;

@Repository("storeRepository")
public interface StoreRepository extends JpaRepository<Store, String>, StoreRepositoryCustom {

	Store findOneByStoreCd(String storeCd);

	@Query("select s from Store s")
	List<Store> getStoreList();

}
