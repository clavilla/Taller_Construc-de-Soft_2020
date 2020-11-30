package com.companyname.springapp.business.repositories;

import org.springframework.data.repository.CrudRepository;

import com.companyname.springapp.business.entities.EventType;

public interface EventTypeRepository extends CrudRepository<EventType, Integer>{

}