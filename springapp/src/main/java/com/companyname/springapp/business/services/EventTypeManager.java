package com.companyname.springapp.business.services;

import java.util.List;

import com.companyname.springapp.business.entities.Event;
import com.companyname.springapp.business.entities.EventType;

public interface EventTypeManager {

    /*	private Integer id;
	private Integer idType;
	private String name;
	private String description;
	private String duration;
	private String endDate;
	private String dayQuantity;
	private String startDate;
	private String time;   */
    


	public List<EventType> getAll();

	
	
}
