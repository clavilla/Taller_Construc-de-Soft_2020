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

	@Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	@Column(name = "id_tipo")
	private Integer idType;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "descripcion")
	private String description;
	
	@Column(name = "duracion")
	private String duration;
	
	@Column(name = "fecha_fin")
	private Date endDate;
	
	@Column(name = "dias")
	private String dayQuantity;
	
	@Column(name = "fecha_inicio")
	private Date startDate;
	
	@Column(name = "hora")
	private Time time;
	
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

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDayQuantity() {
		return dayQuantity;
	}

	public void setDayQuantity(String dayQuantity) {
		this.dayQuantity = dayQuantity;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Event [id=" + id + ", idType=" + idType + ", name=" + name + ", description=" + description
				+ ", duration=" + duration + ", endDate=" + endDate + ", dayQuantity=" + dayQuantity + ", startDate="
				+ startDate + ", time=" + time + "]";
	}
}