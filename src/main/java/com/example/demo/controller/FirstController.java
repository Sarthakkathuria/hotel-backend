package com.example.demo.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Model.HotelCard;
import com.example.demo.service.HotelService;

@Controller
public class FirstController {
	private static final Logger log = Logger.getLogger(FirstController.class);
	@Autowired
	private HotelService service;
	
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
		List<HotelCard>  ww = service.getAllCard();
		m.addAttribute("hotels", ww);
		return "allhotels.jsp";
	}
	
	@RequestMapping("/hotel")
	public ModelAndView getHotel(@RequestParam("location") String location){
		List<HotelCard>  wq = service.getCardByLocation(location); // I have to change this and make this in service
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
	
	@RequestMapping(value ="/save",method = RequestMethod.POST)
	public ModelAndView saveCard(HotelCard card) {
		service.saveOrUpdate(card);
		log.info("hotel saved");
		return new ModelAndView("redirect:/addnew");
	}
	
}
	

