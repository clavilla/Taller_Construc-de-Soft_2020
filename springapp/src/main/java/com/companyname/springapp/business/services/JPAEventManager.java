package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.Event;
import com.companyname.springapp.business.repositories.EventRepository;

public class JPAEventManager implements EventManager{
	
	@Autowired
    private EventRepository eventRepository;

	@Override
	public boolean add(Event event) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Event> getAll() {
		return (List<Event>) eventRepository.findAll();
	}

	@Override
	public boolean update(Event event) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Event event) {
		// TODO Auto-generated method stub
		return false;
	}
	
	

}
