//package com.alliance.controller.view;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.alliance.service.StoreService;
//
//@Controller(value = "stroveViewController")
//@RequestMapping(value = "/store")
//public class StoreViewController {
//
//	@Autowired
//	private StoreService storeService;
//
//	@RequestMapping(method = RequestMethod.GET)
//	public ModelAndView getStoreList() {
//
//		ModelAndView mav = new ModelAndView("store/storeList");
//		mav.addObject("storeList", storeService.getStoreList());
//
//		return mav;
//	}
//
//	@RequestMapping(value = "/details", method = RequestMethod.GET)
//	public ModelAndView getStoreDetails(@PathVariable(name = "storeCd") String storeCd) {
//		ModelAndView mav = new ModelAndView("store/details");
//		return mav;
//	}
//
//}
