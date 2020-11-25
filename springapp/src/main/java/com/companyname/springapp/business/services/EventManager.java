package com.companyname.springapp.business.services;

import java.util.List;

import com.companyname.springapp.business.entities.Event;

public interface EventManager {

	public boolean add(Event event);

	public List<Event> getAll();

	public boolean update(Event event);

	public boolean delete(Event event);

}
