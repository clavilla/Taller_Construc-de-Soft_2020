package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.companyname.springapp.business.entities.Usuario;

public interface UsuarioManager {

  
    Usuario findByUserPass (String usuario, String contrasenia);
    
    public void registrarUsuario(String nombre, String usuario, String contrasenia);
    
}
