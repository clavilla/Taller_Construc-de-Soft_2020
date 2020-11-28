package com.companyname.springapp.business.entities;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class UsuarioTests {

    private Usuario usuario;

    @Before
    public void setUp() throws Exception {
	usuario = new Usuario();
    }

    @Test
    public void testSetAndGetUsuario() {
	String testUsuario = "aUsuario";
	assertNull(usuario.getUsuario());
	usuario.setUsuario(testUsuario);
	assertEquals(testUsuario, usuario.getUsuario());
    }

    @Test
    public void testSetAndGetContrasenia() {
	String testContrasenia = "aContrasenia";
	assertNull(usuario.getContrasenia());
	usuario.setContrasenia(testContrasenia);
	assertEquals(testContrasenia, usuario.getContrasenia());
    }

}