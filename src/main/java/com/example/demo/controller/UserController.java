package com.example.demo.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger log = Logger.getLogger(UserController.class);
	
	@RequestMapping("/index")
	public String index() {
		log.info("user controller");
		return "/user.jsp";
	}
	@RequestMapping("/first")
	public String index1() {
		log.info("user controller");
		return "/login.jsp";
	}
	//things to complete on friday
	@RequestMapping("/allBookings")
	public String bookings(Model model) {
		return "this page";
	}
//	allHotels edit details on this page 
	// complete register page and add details page
	// checkout page is left 
	// update details 
	
//	User part --- check booking under user 
//	update details
	//remove all the hardcoded values
	
}
