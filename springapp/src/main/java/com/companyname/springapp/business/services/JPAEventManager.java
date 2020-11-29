package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.Event;
import com.companyname.springapp.business.repositories.EventRepository;

@Service
public class JPAEventManager implements EventManager{
	
	@Autowired
	private EventRepository eventRepository;

	@Override
	public List<Event> getAll() {
		return (List<Event>) eventRepository.findAll();
	}

	@Override
	public void add(int idType, String name, String description, 
		String duration, String endDate, String dayQuantity, 
		String startDate, String time) {
	    eventRepository.save(new Event(idType, name, description, duration, endDate, dayQuantity, startDate, time));
	}

	@Override
	public void update(int id, int idType, String name, String description, 
		String duration, String endDate,String dayQuantity, 
		String startDate, String time) {
	    eventRepository.save(new Event(id, idType, name, description, duration, endDate,
		    dayQuantity, startDate, time));
	    
	}

	@Override
	public void delete(int id) {
	    eventRepository.delete(eventRepository.findById(id).get());
	}

	@Override
	public Event getEvento(int id) {
	    return eventRepository.findById(id).get();
	}
		

}
