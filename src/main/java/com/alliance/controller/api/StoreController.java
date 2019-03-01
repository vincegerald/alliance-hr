//package com.alliance.controller.api;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.alliance.entity.Store;
//import com.alliance.service.StoreService;
//
//@RestController(value = "storeApiController")
//@RequestMapping(value = "/api/store")
//public class StoreController {
//
//	@Autowired
//	private StoreService storeService;
//
//	@RequestMapping(method = RequestMethod.GET)
//	public List<Store> getStoreList() {
//		return storeService.getStoreList();
//	}
//
//	@RequestMapping(method = RequestMethod.GET, value = "/{storeCd}")
//	public Store getStoreDetails(@PathVariable(name = "storeCd") String storeCd) {
//		return storeService.getStoreDetails(storeCd);
//	}
//
//	@RequestMapping(method = RequestMethod.POST)
//	public boolean updateStoreDetails(@RequestBody Store store) {
//		return storeService.updateStore(store);
//	}
//
//}
