package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.HotelCard;
import com.example.demo.repository.HotelCardRepository;

@Service
public class HotelService implements HotelCardService{
	
	@Autowired
	private HotelCardRepository repo;

	@Override
	public List<HotelCard> getAllCard() {
		return repo.findAll();
	}

	@Override
	public void saveOrUpdate(HotelCard card) {
		HotelCard cc = new HotelCard();
		cc.setId(card.getId());
		cc.setName(card.getName());
		cc.setDistance(card.getDistance());
		cc.setPrice(card.getPrice());
		cc.setLocation(card.getLocation());
		cc.setImg(card.getImg());
		repo.save(cc);
		
	}

	@Override
	public HotelCard getCardById(int id) {
		Optional<HotelCard> list = repo.findById(id);
		HotelCard f = null;
		if (list.isPresent()) {
			f = list.get();
			
		}
		return f;
	}

	@Override
	public List<HotelCard> getCardByLocation(String location) {
		return repo.findByLocation(location);
	}

}
