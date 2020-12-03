package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.Event;
import com.companyname.springapp.business.entities.EventType;
import com.companyname.springapp.business.entities.Usuario;
import com.companyname.springapp.business.repositories.EventTypeRepository;

@Service
public class JPAEventTypeManager implements EventTypeManager {

    @Autowired
    private EventTypeRepository eventTypeRepository;

    @Override
    public List<EventType> getAll() {
	return (List<EventType>) eventTypeRepository.findAll();
    }
    @Override
    public String getDireccionImagen(String tipo) {
	List<EventType> listaTipoEvento = (List<EventType>) eventTypeRepository.findAll();
	String url = "";
	for (EventType evento : listaTipoEvento) {
	    if (tipo.equalsIgnoreCase(evento.getTipo())) {
		url = evento.getImagen();
		return url;
	    }
	}
	return url;
    }

//    public List<EventType> findByid(int id) {
//	return eventTypeRepository.findById(id).get();
//    }

}
