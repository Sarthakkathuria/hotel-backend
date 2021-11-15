package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.Model.HotelCard;

public interface HotelCardRepository extends JpaRepository<HotelCard, Integer>{
	@Query("Select l from HotelCard l where l.location=?1")
	public List<HotelCard> findByLocation(String location);
}
