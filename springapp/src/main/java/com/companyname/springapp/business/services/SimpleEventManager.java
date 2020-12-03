package com.companyname.springapp.business.services;

import java.util.List;

import com.companyname.springapp.business.entities.Event;

public class SimpleEventManager implements EventManager{
	
	private List<Event> events;

	
    public void setEvents(List<Event> events) {
        this.events = events;
    }

    @Override
    public List<Event> getAll() {
	return events;
    }
    
    @Override
    public void add(String idType, String name, String description, String duration, String endDate, String dayQuantity,
	    String startDate, String time) {
	// TODO Auto-generated method stub
	Event event = new Event();
	event.setIdType(idType);
	event.setName(name);
	event.setDescription(description);
	event.setDuration(duration);
	event.setEndDate(endDate);
	event.setDayQuantity(dayQuantity);
	event.setStartDate(startDate);
	event.setTime(time);
	
	events.add(event);
    }

    @Override
    public void update(int id, String idType, String name, String description, String duration, String endDate,
	    String dayQuantity, String startDate, String time) {
	// TODO Auto-generated method stub
	Event event = new Event();
	
	event = this.getEvento(id);
	
	event.setIdType(idType);
	event.setName(name);
	event.setDescription(description);
	event.setDuration(duration);
	event.setEndDate(endDate);
	event.setDayQuantity(dayQuantity);
	event.setStartDate(startDate);
	event.setTime(time);
    }


    @Override
    public void delete(int id) {
        if (events != null) {
            events.remove(id);
        }  
    }


    @Override
    public Event getEvento(int id) {
	return events.get(id);
    }
	
}
