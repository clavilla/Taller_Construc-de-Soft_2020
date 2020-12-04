package com.companyname.springapp.business.services;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.companyname.springapp.business.entities.Event;

public class SimpleEventManagerTests {

    private SimpleEventManager eventManager;
    
    private List<Event> events;
    
    private static int EVENT_COUNT = 2;
    
    private static String EVENT_NAME = "event";
    private static String EVENT_DESCRIPTION = "description";
    
    private static String EVENT_NAME2 = "event2";
    private static String EVENT_DESCRIPTION2 = "description2";

    private static int POSITIVE_PRICE_INCREASE = 10; 
    
    @Before
    public void setUp() throws Exception {
        eventManager = new SimpleEventManager();
        events = new ArrayList<Event>();
        
        // stub up a list of products
        Event event = new Event();
        event.setName(EVENT_NAME);
        event.setDescription(EVENT_DESCRIPTION);
        events.add(event);
        
        event = new Event();
        event.setName(EVENT_NAME2);
        event.setDescription(EVENT_DESCRIPTION2);
        events.add(event);
        
        eventManager.setEvents(events);

    }

    @Test
    public void testGetEventsWithNoEvent() {
    	eventManager = new SimpleEventManager();
        assertNull(eventManager.getAll());
    }

    @Test
    public void testGetEvents() {
        List<Event> events = eventManager.getAll();
        assertNotNull(events);        
        assertEquals(EVENT_COUNT, eventManager.getAll().size());
    
        Event event = events.get(0);
        assertEquals(EVENT_NAME, event.getName());
        assertEquals(EVENT_DESCRIPTION, event.getDescription());
        
        event = events.get(1);
        assertEquals(EVENT_NAME2, event.getName());
        assertEquals(EVENT_DESCRIPTION2, event.getDescription());      
    }


}