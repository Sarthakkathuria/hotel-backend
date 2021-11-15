package com.example.demo.controller;

import java.util.List;

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

	@Autowired
	private HotelService service;
	
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping("/allhotels")
	public String hotels(Model m) {
		List<HotelCard>  ww = service.getAllCard();
		System.out.println("all hotels");
		m.addAttribute("hotels", ww);
		return "hotels.jsp";
	}
	
	@RequestMapping("/hotel")
	public ModelAndView getHotel(@RequestParam("location") String location){
		List<HotelCard>  wq = service.getCardByLocation(location); // I have to change this and make this in service
		ModelAndView model = new ModelAndView();
		System.out.println("search by location");
		model.addObject("wq", wq);
		model.setViewName("hotels.jsp");
		return model;
	}
	@RequestMapping("/addnew")
	public String addnew() {
		System.out.println("add new hotel");
		return "addform.jsp";
	}
	
	@RequestMapping(value ="/save",method = RequestMethod.POST)
	public ModelAndView saveCard(HotelCard card) {
		service.saveOrUpdate(card);
		return new ModelAndView("redirect:/addnew");
	}
	
}
	

