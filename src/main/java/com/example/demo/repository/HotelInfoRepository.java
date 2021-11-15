package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.example.demo.Model.HotelInfo;

public interface HotelInfoRepository extends JpaRepository<HotelInfo, Integer>{
	
	@Query("Select l from HotelInfo l where l.name=?1")
	public HotelInfo findByName(String name);
}
