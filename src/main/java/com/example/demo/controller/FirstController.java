package com.example.demo.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.example.demo.Model.HotelCardDTO;
import com.example.demo.Model.UserDTO;
import com.example.demo.config.UserDetailsServiceImpl;
import com.example.demo.service.HotelService;

@Controller
public class FirstController {
	private static final Logger log = Logger.getLogger(FirstController.class);
	@Autowired
	private HotelService service;
	
	@Autowired
	private UserDetailsServiceImpl service2;
	
	@RequestMapping("/")
	public String home() {
		log.info("this is index page");
		return "index.jsp";
	}
	@RequestMapping("/final")
	public String finalp(){
		log.info("this is final page");
		return "final.jsp";
	}
	@RequestMapping("/allhotels")
	public String hotels(Model m) {
		log.info("all hotels");
		List<HotelCardDTO>  ww = service.getAllCard();
		m.addAttribute("hotels", ww);
		return "allhotels.jsp";
	}
	
	@RequestMapping("/hotel")
	public ModelAndView getHotel(@RequestParam("location") String location){
		List<HotelCardDTO>  wq = service.getCardByLocation(location); // I have to change this and make this in service
		ModelAndView model = new ModelAndView();
		log.info("Search by location");
		model.addObject("wq", wq);
		model.setViewName("hotels.jsp");
		return model;
	}
	
	@RequestMapping("/addnew")
	public String addnew() {
		log.info("add new hotel");
		return "addform.jsp";
	}
	
	@PostMapping(value ="/save")
	public ModelAndView saveCard(HotelCardDTO card) {
		service.saveOrUpdate(card);
		log.info("hotel saved");
		return new ModelAndView("redirect:/addnew");
	}
	
	@RequestMapping("/signup")
	public String signup() {
		return "signup.jsp";
	}
	
	@PostMapping(value="/save3")
	public ModelAndView page(UserDTO user) {
		service2.saveOrUpdate(user);
		return new ModelAndView("redirect:/signup");
	}
	
	@RequestMapping("/login")
	public String customLogin(Model m) {
		log.info("Login page");
		return "login.jsp";
	}

}
	

