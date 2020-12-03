package com.companyname.springapp.business.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.companyname.springapp.business.entities.EventType;
import com.companyname.springapp.business.entities.Usuario;

public interface EventTypeRepository extends CrudRepository<EventType, Integer>{

    List <EventType> findByid (int id);
    
    String getDireccionImagen(String tipo);
    
}