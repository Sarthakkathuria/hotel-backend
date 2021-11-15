package com.example.demo.service;


import com.example.demo.Model.HotelInfo;

public interface HotelInfoServiceInterface {
	public void saveOrUpdate(HotelInfo card);
	public HotelInfo getByName(String name);
	public HotelInfo getCardById(int id);
	
}
