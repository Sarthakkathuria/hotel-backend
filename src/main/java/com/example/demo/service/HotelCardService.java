package com.example.demo.service;

import java.util.List;

import com.example.demo.Model.HotelCard;

public interface HotelCardService {
	public List<HotelCard> getAllCard();
	public void saveOrUpdate(HotelCard card);
	public HotelCard getCardById(int id);
	public List<HotelCard> getCardByLocation(String location);
}
