package com.companyname.springapp.business.repositories;

import java.util.List;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.companyname.springapp.business.SpringappBusinessConfig;
import com.companyname.springapp.business.entities.Usuario;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {SpringappBusinessConfig.class})
public class UsuarioRepositoryTests {

	    @Autowired
	    private UsuarioRepository usuarioRepository;

	    @Test
	    public void testGetUsuarioList() {
	        List<Usuario> usuarios = (List<Usuario>) usuarioRepository.findAll();
	        assertEquals(usuarios.size(), 2, 0);
	    }
	    
	  
	    
	}