package com.alliance.repository.custom;

import org.springframework.stereotype.Repository;

import com.alliance.entity.Store;

@Repository("storeRepositoryCustom")
public interface StoreRepositoryCustom {

	boolean updateStore(Store store);

}
