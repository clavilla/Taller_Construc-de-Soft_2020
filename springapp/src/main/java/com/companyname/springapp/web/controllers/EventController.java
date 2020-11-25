package com.companyname.springapp.web.controllers;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.companyname.springapp.business.services.EventManager;

@Controller
public class EventController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	
	@Autowired
    private EventManager eventManager;

    @RequestMapping(value="/events.htm")
    public ModelAndView handleRequest() {
        logger.info("Returning events view");
        
        Map<String, Object> myModel = new HashMap<String, Object>();
        myModel.put("eventsList", this.eventManager.getAll());

        return new ModelAndView("events", "model", myModel);
    }
}