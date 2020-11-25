package com.companyname.springapp.business.repositories;

import org.springframework.data.repository.CrudRepository;

import com.companyname.springapp.business.entities.Event;

public interface EventRepository extends CrudRepository<Event, Integer>{

}