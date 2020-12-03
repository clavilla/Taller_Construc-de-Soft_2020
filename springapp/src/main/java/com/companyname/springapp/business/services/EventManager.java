package com.companyname.springapp.business.services;

import java.util.List;

import com.companyname.springapp.business.entities.Event;

public interface EventManager {

    /*	private Integer id;
	private Integer idType;
	private String name;
	private String description;
	private String duration;
	private String endDate;
	private String dayQuantity;
	private String startDate;
	private String time;   */
    
	public void add(String idType, String name, String description, 
		String duration, String endDate, String dayQuantity,
		String startDate, String time);

	public List<Event> getAll();

	public void update(int id, String idType, String name, String description, 
		String duration, String endDate,String dayQuantity, 
		String startDate, String time);

	public void delete(int id);
	
	public Event getEvento(int id) ;

	
}
