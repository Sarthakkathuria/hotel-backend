package com.example.demo.service;

import java.util.List;

import com.example.demo.Model.HotelCardDTO;

public interface HotelCardService {
	public List<HotelCardDTO> getAllCard();
	public void saveOrUpdate(HotelCardDTO card);
	public HotelCardDTO getCardById(int id);
	public List<HotelCardDTO> getCardByLocation(String location);
}
