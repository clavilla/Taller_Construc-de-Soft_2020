package com.companyname.springapp.business.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import java.sql.Date;
import java.sql.Time;

@Entity
@Table(name = "eventos")
public class Event {
    //@GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    @Column(name = "id")
 	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "idType")
    private Integer idType;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "duration")
    private String duration;

    @Column(name = "endDate")
    private String endDate;

    @Column(name = "dayQuantity")
    private String dayQuantity;

    @Column(name = "startDate")
    private String startDate;

    @Column(name = "time")
    private String time;
    
   // @Column(name = "img")
    //private String img;

    public Event() {

    }

    public Integer getId() {
	return id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public Integer getIdType() {
	return idType;
    }

    public void setIdType(Integer idType) {
	this.idType = idType;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getDescription() {
	return description;
    }

    public void setDescription(String description) {
	this.description = description;
    }

    public String getDuration() {
	return duration;
    }

    public void setDuration(String duration) {
	this.duration = duration;
    }

    public String getEndDate() {
	return endDate;
    }

    public void setEndDate(String endDate) {
	this.endDate = endDate;
    }

    public String getDayQuantity() {
	return dayQuantity;
    }

    public void setDayQuantity(String dayQuantity) {
	this.dayQuantity = dayQuantity;
    }

    public String getStartDate() {
	return startDate;
    }

    public void setStartDate(String startDate) {
	this.startDate = startDate;
    }

    public String getTime() {
	return time;
    }

    public void setTime(String time) {
	this.time = time;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("id: " + id + ";");
        buffer.append("idType: " + idType + ";");
        buffer.append("name: " + name + ";");
        buffer.append("description: " + description + ";");
        buffer.append("duration: " + duration + ";");
        buffer.append("endDate: " + endDate + ";");
        buffer.append("dayQuantity: " + dayQuantity + ";");
        buffer.append("startDate: " + startDate + ";");
        buffer.append("time: " + time + ";");
        	    return buffer.toString();
    }
    
    //constructor para modificar evento
    public Event(Integer id, Integer idType, String name, String description, String duration, String endDate,
	    String dayQuantity, String startDate, String time) {
	super();
	this.id = id;
	this.idType = idType;
	this.name = name;
	this.description = description;
	this.duration = duration;
	this.endDate = endDate;
	this.dayQuantity = dayQuantity;
	this.startDate = startDate;
	this.time = time;
    }
	
    //constructor para nuevo evento
    public Event(Integer idType, String name, String description, String duration, String endDate,
	    String dayQuantity, String startDate, String time) {
	super();
	this.idType = idType;
	this.name = name;
	this.description = description;
	this.duration = duration;
	this.endDate = endDate;
	this.dayQuantity = dayQuantity;
	this.startDate = startDate;
	this.time = time;
    }
	
}