package com.companyname.springapp.web.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.companyname.springapp.business.services.EventManager;

@Controller
public class EventController {
    /*	private Integer id;
	private Integer idType;
	private String name;
	private String description;
	private String duration;
	private String endDate;
	private String dayQuantity;
	private String startDate;
	private String time;   */
    @Autowired
    private EventManager eventManager;
    
    /*
    //para la vista de unico evento
        @RequestMapping(value = "/events.htm", params = "id", method = RequestMethod.GET)
    public ModelAndView handleRequest(@RequestParam("id") int id) {
	Map<String, Object> myModel = new HashMap<String, Object>();
	myModel.put("event", eventManager.getEvento(id));
	return new ModelAndView("events", "model", myModel);
    }*/
    /*
    //para la vista de todo
    @RequestMapping(value = "/events.htm", method = RequestMethod.GET)
    public ModelAndView handleRequest() {
	Map<String, Object> myModel = new HashMap<String, Object>();
	return new ModelAndView("events", "model", myModel);
    }*/
    
    @RequestMapping(value="/events.htm")
    public ModelAndView handleRequest() {
        Map<String, Object> myModel = new HashMap<String, Object>();
        myModel.put("events", this.eventManager.getAll());
        return new ModelAndView("events", "model", myModel);
    }
    
    
    @RequestMapping(value="/createevent.htm")
    public ModelAndView handleRequest2() {
        Map<String, Object> myModel = new HashMap<String, Object>();
        //myModel.put("createevent", this.eventManager.getAll());
        return new ModelAndView("createevent", "model", myModel);
    }
  
    //modificar evento
    @RequestMapping(value = "/events.htm", params = { 
	    "id", 
	    "idType", 
	    "name", 
	    "description",
	    "duration",
	    "endDate", 
	    "dayQuantity", 
	    "startDate",
	    "time"}, method = RequestMethod.POST)
    public String onSubmit(
	    @RequestParam("id") int id, 
	    @RequestParam("idType") int idType,
	    @RequestParam("name") String name,
	    @RequestParam("description") String description,
	    @RequestParam("duration") String duration, 
	    @RequestParam("endDate") String endDate,
	    @RequestParam("dayQuantity") String dayQuantity, 
	    @RequestParam("startDate") String startDate,
	    @RequestParam("time") String time) {
	eventManager.update(id, idType, name, description, duration, 
		endDate, dayQuantity, startDate, time);
	return "redirect:/index.htm";
    }

    
  //eliminar evento
    @RequestMapping(value = "/events.htm", params = "id", method = RequestMethod.GET)
    public String handleRequestBorra(@RequestParam("id") int id) {
	eventManager.delete(id);
	return "redirect:/index.htm";
    }

    //agregar evento
    @RequestMapping(value = "/createevent.htm", params = {  
	    "idType", 
	    "name", 
	    "description",
	    "duration",
	    "endDate", 
	    "dayQuantity", 
	    "startDate",
	    "time" }, method = RequestMethod.POST)
    public String onSubmitNuevo(
	    @RequestParam("idType") int idType,
	    @RequestParam("name") String name,
	    @RequestParam("description") String description,
	    @RequestParam("duration") String duration, 
	    @RequestParam("endDate") String endDate,
	    @RequestParam("dayQuantity") String dayQuantity, 
	    @RequestParam("startDate") String startDate,
	    @RequestParam("time") String time) {
	eventManager.add(idType, name, description, duration, endDate, dayQuantity, startDate, time);
	return "redirect:/events.htm";
    }

}