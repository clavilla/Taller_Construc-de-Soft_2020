package com.companyname.springapp.business.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.companyname.springapp.business.entities.Usuario;


@Repository
public interface UsuarioRepository extends CrudRepository<Usuario, Integer> {

    //Usuario findByUserPass(String usuario, String contrasenia);
    List <Usuario> findByUsuario(String usuario);

}