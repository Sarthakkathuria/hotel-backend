package com.example.demo;

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

import com.example.demo.Model.HotelCardDTO;
import com.example.demo.repository.HotelCardRepository;


@SpringBootTest
@RunWith(SpringRunner.class)
class HotelBookingApplicationTests {
	
	@Autowired
	private HotelCardRepository repo;
	
	@Test
	@Order(1)
	public void saveTest() {
		HotelCardDTO cc = new HotelCardDTO();
		cc.setId(19);
		cc.setName("sarthak");
		cc.setDistance(1009);
		cc.setPrice(409);
		cc.setLocation("delhi");
		cc.setImg("google.com");
		HotelCardDTO cd = repo.save(cc);
		Assertions.assertNotNull(cd);
	}
	
	@Test
	@Order(2)
	public void cardByIdTest() {
		int id = 2;
		Optional<HotelCardDTO> list = repo.findById(id);
		HotelCardDTO f = null;
		if (list.isPresent()) {
			f = list.get();
			
		}
		assertEquals(f.getId(),id);
		
	}
	@Test
	@Order(3)
	public void getallCardTest() {
		int size = 6;
		List<HotelCardDTO> ll = repo.findAll();
		assertEquals(size,ll.size());
	}
	
	@Test
	@Order(4)
	public void getCardLocation() {
		int size = 5;
		List<HotelCardDTO> ll = repo.findByLocation("delhi");
		assertEquals(size,ll.size());
	}
}
