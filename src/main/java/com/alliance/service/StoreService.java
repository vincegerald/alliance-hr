package com.alliance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alliance.entity.Store;
import com.alliance.repository.StoreRepository;

@Service("storeService")
@Transactional(rollbackFor = Exception.class)
public class StoreService {

	@Autowired
	private StoreRepository storeRepository;

	public List<Store> getStoreList() {
		return storeRepository.getStoreList();
	}

	public Store getStoreDetails(String storeCd) {
		return storeRepository.findOneByStoreCd(storeCd);
	}

	public boolean updateStore(Store store) {
		// EntityManager entityManager = getEntityManager();
		// entityManager.getTransaction().begin();
		//
		// boolean isUpdateSuccess = storeRepository.updateStore(store, entityManager);
		//
		// entityManager.getTransaction().commit();
		// return isUpdateSuccess;

		boolean isUpdateSuccess = storeRepository.updateStore(store);
		return isUpdateSuccess;
	}

}
