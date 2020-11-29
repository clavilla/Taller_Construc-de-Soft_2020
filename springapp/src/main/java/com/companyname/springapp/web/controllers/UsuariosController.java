package com.companyname.springapp.web.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.companyname.springapp.business.services.UsuarioManager;

@Controller
public class UsuariosController {

    @Autowired
    private UsuarioManager usuarioManager;

    @RequestMapping(value = "/login.htm", method = RequestMethod.GET)
    public ModelAndView handleRequest() {
	Map<String, Object> myModel = new HashMap<String, Object>();
	return new ModelAndView("login", "model", myModel);
    }

    @RequestMapping(value = "/login.htm", params = { "usuario", "contrasenia"}, method = RequestMethod.POST)
    public String onSubmit(
	    @RequestParam("usuario") String usuario, 
	    @RequestParam("contrasenia") String contrasenia) {
	usuarioManager.findByUserPass(usuario, contrasenia);
	//usuarioManager.guardarUsuario(usuario, contrasenia);
	return "redirect:/events.htm";
    }
    
    @RequestMapping(value = "/signup.htm", method = RequestMethod.GET)
    public ModelAndView handleRequest2() {
	Map<String, Object> myModel = new HashMap<String, Object>();
	return new ModelAndView("signup", "model", myModel);
    }
    
    @RequestMapping(value = "/signup.htm", params = { "nombre", "usuario", "contrasenia"}, method = RequestMethod.POST)
    public String onSubmitNuevo(
	    @RequestParam("nombre") String nombre, 
	    @RequestParam("usuario") String usuario, 
	    @RequestParam("contrasenia") String contrasenia) {
	usuarioManager.registrarUsuario(nombre, usuario, contrasenia);
	return "redirect:/events.htm";
    }
   
    
}