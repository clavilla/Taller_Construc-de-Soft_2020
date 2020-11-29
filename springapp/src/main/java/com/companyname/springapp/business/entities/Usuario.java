package com.companyname.springapp.business.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usuarios")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int id;
    private String usuario;
    private String contrasenia;
    private String nombre;

    public Usuario() {

    }

    public Usuario(int id, String nombre, String usuario, String password) {
	this.id = id;
	this.nombre = nombre;
	this.usuario = usuario;
	this.contrasenia = password;
    }

    // para registrar
    public Usuario(String nombre, String usuario, String password) {
	this.nombre = nombre;
	this.usuario = usuario;
	this.contrasenia = password;
    }

    // para buscar en la bd
    public Usuario(String usuario, String password) {
	this.usuario = usuario;
	this.contrasenia = password;
    }

    public String getContrasenia() {
	return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
	this.contrasenia = contrasenia;
    }

    public String getUsuario() {
	return usuario;
    }

    public void setUsuario(String usuario) {
	this.usuario = usuario;
    }

    public Integer getId() {
	return id;
    }

    public void setId(Integer id) {
	this.id = id;
    }

    public String getNombre() {
	return nombre;
    }

    public void setNombre(String nombre) {
	this.nombre = nombre;
    }

    public String toString() {
	StringBuffer buffer = new StringBuffer();
	buffer.append("Nombre: " + nombre + ";");
	buffer.append("Usuario: " + usuario + ";");
	buffer.append("Password: " + contrasenia + ";");
	return buffer.toString();
    }

}
