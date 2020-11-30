package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.EventType;
import com.companyname.springapp.business.repositories.EventTypeRepository;

@Service
public class JPAEventTypeManager implements EventTypeManager {

    @Autowired
    private EventTypeRepository eventTypeRepository;

    @Override
    public List<EventType> getAll() {
	return (List<EventType>) eventTypeRepository.findAll();
    }

}
