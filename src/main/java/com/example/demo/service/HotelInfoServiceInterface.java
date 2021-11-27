package com.example.demo.service;


import com.example.demo.Model.HotelInfoDTO;

public interface HotelInfoServiceInterface {
	public void saveOrUpdate(HotelInfoDTO card);
	public HotelInfoDTO getByName(String name);
	public HotelInfoDTO getCardById(int id);
	
}
