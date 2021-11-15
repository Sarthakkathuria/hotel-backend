package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class HotelCard {
	
	@Id
	
	private int id;
	private String name;
	private int distance;
	private String location;
	private int price;
	private String img;
	public HotelCard(int id, String name, int distance, String location, int price,String img) {
		super();
		this.id = id;
		this.name = name;
		this.distance = distance;
		this.location = location;
		this.price = price;
		this.img = img;
		
	}
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public HotelCard() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
