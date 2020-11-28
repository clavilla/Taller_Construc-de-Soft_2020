package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.companyname.springapp.business.entities.Usuario;

public interface UsuarioManager {

   
    /*
    @Query("select * from usuarios u where u.usuario = :usuario and u.contrasenia = :contrasenia")
    public void guardarUsuario(@Param("usuario") String usuario,
                               @Param("contrasenia") String contrasenia);
    */
    Usuario findByUserPass (String usuario, String contrasenia);
    
    
}
