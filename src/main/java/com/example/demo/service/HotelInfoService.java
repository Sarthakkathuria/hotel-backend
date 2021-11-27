package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.demo.Model.HotelInfoDTO;
import com.example.demo.repository.HotelInfoRepository;

@Service
public class HotelInfoService implements HotelInfoServiceInterface{
	
	@Autowired
	private HotelInfoRepository repo;
	
	@Override
	public void saveOrUpdate(HotelInfoDTO card) {
		HotelInfoDTO cc = new HotelInfoDTO();
		cc.setId(card.getId());
		cc.setName(card.getName());
		cc.setDescription(card.getDescription());
		cc.setPrice(card.getPrice());
		cc.setReview(card.getReview());
		cc.setUrl1(card.getUrl1());
		cc.setUrl2(card.getUrl2());
		cc.setUrl3(card.getUrl3());
		cc.setUrl4(card.getUrl4());
		cc.setUrl5(card.getUrl5());
		repo.save(cc);
		
	}

	@Override
	public HotelInfoDTO getCardById(int id) {
		Optional<HotelInfoDTO> list = repo.findById(id);
		HotelInfoDTO f = null;
		if (list.isPresent()) {
			f = list.get();
			
		}
		return f;
	}

	@Override
	public HotelInfoDTO getByName(String name) {
		return repo.findByName(name);
	}


}
