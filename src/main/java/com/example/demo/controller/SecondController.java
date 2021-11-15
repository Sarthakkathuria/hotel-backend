package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Model.HotelInfo;
import com.example.demo.service.HotelInfoService;

@Controller
public class SecondController {
	@Autowired
	private HotelInfoService service;
	
	@RequestMapping("/hoteldetails")
	private ModelAndView detils(@RequestParam("name") String name) {
		HotelInfo  wq = service.getByName(name); // I have to change this and make this in service
		ModelAndView model = new ModelAndView();
		System.out.println("search by name");
		System.out.println(name);
		model.addObject("ww", wq);
		model.setViewName("details.jsp");
		return model;
	}
	@RequestMapping("/addneww")
	public String addnew() {
		System.out.println("add new hotel");
		return "addform2.jsp";
	}
	
	@RequestMapping(value ="/save2",method = RequestMethod.POST)
	public ModelAndView saveCard(HotelInfo card) {
		service.saveOrUpdate(card);
		return new ModelAndView("redirect:/addneww");
	}
}
