//package com.companyname.springapp.business.repositories;
//
//import java.sql.Date;
//import java.sql.Time;
//import java.util.List;
//
//import static org.junit.Assert.*;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import com.companyname.springapp.business.SpringappBusinessConfig;
//import com.companyname.springapp.business.entities.Event;
//import com.companyname.springapp.business.entities.Product;
//
//@RunWith(SpringRunner.class)
//@ContextConfiguration(classes = { SpringappBusinessConfig.class })
//public class EventRepositoryTests {
//
//    @Autowired
//    private EventRepository eventRepository;
//
//    @Test
//    public void testGetEventList() {
//	List<Event> events = (List<Event>) eventRepository.findAll();
//	assertEquals(events.size(), 2, 0);
//    }
//
//    /*
//     * private Integer id; private Integer idType; private String name; private
//     * String description; private String duration; private Date endDate; private
//     * String dayQuantity; private Date startDate; private Time time;
//     */
//
//    @Test
//    public void testSaveProduct() {
//	List<Event> events = (List<Event>) eventRepository.findAll();
//
//	Event p = events.get(0);
//	int idType = p.getIdType();
//	String name = p.getName();
//	String description = p.getDescription();
//	String duration = p.getDuration();
//	String endDate = p.getEndDate();
//	String dayQuantity = p.getDayQuantity();
//	String startDate = p.getStartDate();
//	String time = p.getTime();
//
//	p.setIdType(3);
//	p.setName("testName");
//	p.setDescription("setDescripcion");
//	p.setDuration("testDuration");
//	p.setEndDate("2020-11-11");
//	p.setDayQuantity("4");
//	p.setStartDate("2020-11-10");
//	p.setTime("5:00:00");
//	eventRepository.save(p);
//
//	List<Event> updatedEvents = (List<Event>) eventRepository.findAll();
//	Event p2 = updatedEvents.get(0);
//	assertEquals(p2.getName(), "testName");
//	assertEquals(p2.getEndDate(), "2020-11-11");
//
//	p2.setIdType(idType);
//	p2.setName(name);
//	p2.setDescription(description);
//	p2.setDuration(duration);
//	p2.setEndDate(endDate);
//	p2.setDayQuantity(dayQuantity);
//	p2.setStartDate(startDate);
//	p2.setTime(time);
//
//	eventRepository.save(p2);
//    }
//
//    @Test
//    public void testNewEvent() {
//	List<Event> events = (List<Event>) eventRepository.findAll();
//	assertEquals(events.size(), 2, 0);
//
//	Event p = new Event();
//	p.setId(0);
//	p.setIdType(3);
//	p.setName("testName");
//	p.setDescription("setDescripcion");
//	p.setDuration("testDuration");
//	p.setEndDate("2020-11-11");
//	p.setDayQuantity("4");
//	p.setStartDate("2020-11-10");
//	p.setTime("5:00:00");
//	eventRepository.save(p);
//
//	events = (List<Event>) eventRepository.findAll();
//	assertEquals(events.size(), 3, 0);
//
//	 eventRepository.delete(p);
//
//	events = (List<Event>) eventRepository.findAll();
//	assertEquals(events.size(), 2, 0);
//    }
//
//}
