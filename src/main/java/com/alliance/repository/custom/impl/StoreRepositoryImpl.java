package com.alliance.repository.custom.impl;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;

import com.alliance.entity.Store;
import com.alliance.repository.custom.StoreRepositoryCustom;

public class StoreRepositoryImpl implements StoreRepositoryCustom {

	@Autowired
	private EntityManager entityManger;

	@Override
	public boolean updateStore(Store store) {

		boolean isUpdateSuccess = true;

		entityManger.merge(store);

		return isUpdateSuccess;
	}

}
