package com.companyname.springapp.business.services;

import java.util.List;

import com.companyname.springapp.business.entities.Event;

public class SimpleEventManager implements EventManager{
	
	private List<Event> events;

	@Override
	public boolean add(Event event) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Event> getAll() {
		return events;
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
