package com.example.demo.Model;

public class HotelInfoDTO {
	private int id;
	private String name;
	private String description;
	private int price;
	private double review;
	private String url1;
	private String url2;
	private String url3;
	private String url4;
	private String url5;
	public HotelInfoDTO(int id, String name, String description, int price, double review, String url1, String url2,
			String url3, String url4, String url5) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.review = review;
		this.url1 = url1;
		this.url2 = url2;
		this.url3 = url3;
		this.url4 = url4;
		this.url5 = url5;
	}
	public HotelInfoDTO() {
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getReview() {
		return review;
	}
	public void setReview(double review) {
		this.review = review;
	}
	public String getUrl1() {
		return url1;
	}
	public void setUrl1(String url1) {
		this.url1 = url1;
	}
	public String getUrl2() {
		return url2;
	}
	public void setUrl2(String url2) {
		this.url2 = url2;
	}
	public String getUrl3() {
		return url3;
	}
	public void setUrl3(String url3) {
		this.url3 = url3;
	}
	public String getUrl4() {
		return url4;
	}
	public void setUrl4(String url4) {
		this.url4 = url4;
	}
	public String getUrl5() {
		return url5;
	}
	public void setUrl5(String url5) {
		this.url5 = url5;
	}
	public HotelInfo convertToEntity(HotelInfoDTO info) {
		return new HotelInfo(info.getId(),info.getName(),info.getDescription(),info.getPrice()
				,info.getReview(),info.getUrl1(),info.getUrl2(),info.getUrl3()
				,info.getUrl4(),info.getUrl5());
	}
	
}
