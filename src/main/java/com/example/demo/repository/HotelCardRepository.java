package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.example.demo.Model.HotelCardDTO;

public interface HotelCardRepository extends JpaRepository<HotelCardDTO, Integer>{
	@Query("Select l from HotelCard l where l.location=?1")
	public List<HotelCardDTO> findByLocation(String location);
}
