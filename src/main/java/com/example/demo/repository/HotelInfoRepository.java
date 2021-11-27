package com.example.demo.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.example.demo.Model.HotelInfo;
import com.example.demo.Model.HotelInfoDTO;

public interface HotelInfoRepository extends JpaRepository<HotelInfoDTO, Integer>{
	
	@Query("Select l from HotelInfo l where l.name=?1")
	public HotelInfoDTO findByName(String name);
}
