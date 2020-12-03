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
@Table(name = "tipos_evento")
public class EventType {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "tipo")
    private String tipo;

    @Column(name = "imagen")
    private String imagen;

    // @Column(name = "img")
    // private String img;

    public EventType() {

    }

    public Integer getId() {
	return id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getTipo() {
	return tipo;
    }

    public void setTipo(String tipo) {
	this.tipo = tipo;
    }

    public String getImagen() {
	return imagen;
    }

    public void setImagen(String imagen) {
	this.imagen = imagen;
    }

    public String toString() {
	StringBuffer buffer = new StringBuffer();
	buffer.append("id: " + id + ";");
	buffer.append("tipo: " + tipo + ";");
	buffer.append("imagen: " + imagen + ";");

	return buffer.toString();
    }

}