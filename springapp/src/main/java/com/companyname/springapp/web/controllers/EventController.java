package com.companyname.springapp.web.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.companyname.springapp.business.entities.Event;
import com.companyname.springapp.business.entities.EventType;
import com.companyname.springapp.business.services.EventManager;
import com.companyname.springapp.business.services.EventTypeManager;

@Controller
public class EventController {

	@Autowired
	private EventManager eventManager;

	@Autowired
	private EventTypeManager eventTypeManager;

	/**
	 * 
	 * Metodo que permite obtener una lista de eventos.
	 * 
	 * @return Un modelo con los objetos "Evento" y "Tipo Evento".
	 * 
	 */

	@RequestMapping(value = "/events.htm")
	public ModelAndView obtenerInfoPagEvento() {

		Map<String, Object> myModel = new HashMap<String, Object>();
		List<Event> listaEvento = this.eventManager.getAll();
		List<EventType> listaTiposEventos = this.eventTypeManager.getAll();
		myModel.put("events", listaEvento);
		myModel.put("eventType", listaTiposEventos);

		return new ModelAndView("events", "model", myModel);

	}

	/**
	 * 
	 * Metodo que permite obtener los datos para la pag crear evento (createevent.htm)
	 * 
	 * @return Un modelo con el objeto "Tipo Evento".
	 * 
	 */

	@RequestMapping(value = "/createevent.htm")
	public ModelAndView obtenerInfoPagCrearEvento() {
		
		Map<String, Object> myModel = new HashMap<String, Object>();
		List<EventType> listaTiposEventos = this.eventTypeManager.getAll();
		myModel.put("eventType", listaTiposEventos);
		
		return new ModelAndView("createevent", "model", myModel);
	}

	/**
	 * 
	 * Metodo que permite obtener los datos para la pag modificar evento (modifyevent.htm)
	 * 
	 * @return Un modelo con los objetos "Evento" y "Tipo Evento".
	 * 
	 */
	
	@RequestMapping(value = "/modifyevent.htm", params = "id", method = RequestMethod.GET)
	public ModelAndView obtenerInfoPagModificarEvento(@RequestParam int id) {

		Map<String, Object> myModel = new HashMap<String, Object>();
		Event evento = this.eventManager.getEvento(id);
		List<EventType> tipoEvento = this.eventTypeManager.getAll();
		myModel.put("eventmodify", evento);
		myModel.put("eventType", tipoEvento);

		return new ModelAndView("modifyevent", "model", myModel);
	}

	/**
	 * 
	 * Metodo que permite crear un evento
	 * 
	 * @return Redireccionamiento a la pag events.htm
	 * 
	 */

	@RequestMapping(value = "/createevent.htm", params = { "idType", "name", "description", "duration", "endDate",
			"dayQuantity", "startDate", "time" }, method = RequestMethod.POST)
	public String agregarEvento(@RequestParam("idType") String idType, @RequestParam("name") String name,
			@RequestParam("description") String description, @RequestParam("duration") String duration,
			@RequestParam("endDate") String endDate, @RequestParam("dayQuantity") String dayQuantity,
			@RequestParam("startDate") String startDate, @RequestParam("time") String time) {
		
		duration = dayQuantity + " " + duration;
		eventManager.add(idType, name, description, duration, endDate, dayQuantity, startDate, time);
		
		return "redirect:/events.htm";
	}
	
	/**
	 * 
	 * Metodo que permite modificar un evento
	 * 
	 * @return Redireccionamiento a la pag events.htm
	 * 
	 */
	
	@RequestMapping(value = "/modifyevent.htm", params = { "id", "idType", "name", "description", "duration", "endDate",
			"dayQuantity", "startDate", "time" }, method = RequestMethod.POST)
	public String modificarEvento(@RequestParam("id") int id, @RequestParam("idType") String idType,
			@RequestParam("name") String name, @RequestParam("description") String description,
			@RequestParam("duration") String duration, @RequestParam("endDate") String endDate,
			@RequestParam("dayQuantity") String dayQuantity, @RequestParam("startDate") String startDate,
			@RequestParam("time") String time) {
		
		eventManager.update(id, idType, name, description, duration, endDate, dayQuantity, startDate, time);
		return "redirect:/events.htm";
		
	}

	/**
	 * 
	 * Metodo que permite eliminar un evento
	 * 
	 * @return Redireccionamiento a la pag events.htm
	 * 
	 */
	
	@RequestMapping(value = "/eliminarEvento.htm", params = "id", method = RequestMethod.GET)
	public String eliminarEvento(@RequestParam("id") int id) {
		
		eventManager.delete(id);
		return "redirect:/events.htm";
		
	}

}