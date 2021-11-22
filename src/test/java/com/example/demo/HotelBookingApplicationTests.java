package com.example.demo;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.demo.Model.HotelCard;
import com.example.demo.repository.HotelCardRepository;
import com.example.demo.service.HotelService;

@SpringBootTest
@RunWith(SpringRunner.class)
class HotelBookingApplicationTests {
	
	@Autowired
	private HotelService service;
	@Autowired
	private HotelCardRepository repo;
	
	@Test
	@Order(1)
	public void saveTest() {
		HotelCard cc = new HotelCard();
		cc.setId(19);
		cc.setName("sarthak");
		cc.setDistance(1009);
		cc.setPrice(409);
		cc.setLocation("delhi");
		cc.setImg("google.com");
		HotelCard cd = repo.save(cc);
		Assertions.assertNotNull(cd);
	}
	
	@Test
	@Order(2)
	public void cardByIdTest() {
		Optional<HotelCard> list = repo.findById(2);
		HotelCard f = null;
		if (list.isPresent()) {
			f = list.get();
			
		}
		assertEquals(f.getId(), 2);
		
	}
	@Test
	@Order(3)
	public void getallCardTest() {
		List<HotelCard> ll = repo.findAll();
		assertEquals(ll.size(),6);
	}
	
	@Test
	@Order(4)
	public void getCardLocation() {
		List<HotelCard> ll = repo.findByLocation("delhi");
		assertEquals(ll.size(),5);
	}
}
