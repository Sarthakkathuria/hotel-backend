package com.example.demo.controller;



import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.example.demo.Model.HotelInfoDTO;
import com.example.demo.service.HotelInfoService;

@Controller
public class SecondController {
	
	private static final Logger log = Logger.getLogger(SecondController.class);
	
	@Autowired
	private HotelInfoService service;
	
	@RequestMapping("/hoteldetails")
	public ModelAndView detils(@RequestParam("name") String name) {
		HotelInfoDTO  wq = service.getByName(name); // I have to change this and make this in service
		ModelAndView model = new ModelAndView();
		log.info("Search hotel by name");
		log.info(name);
		model.addObject("ww", wq);
		model.setViewName("details.jsp");
		return model;
	}
	@RequestMapping("/addneww")
	public String addnew() {
		log.info("add new hotel");
		return "addform2.jsp";
	}
	
	@PostMapping(value ="/save2")
	public ModelAndView saveCard(HotelInfoDTO card) {
		service.saveOrUpdate(card);
		return new ModelAndView("redirect:/addneww");
	}
}
