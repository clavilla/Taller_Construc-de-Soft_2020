package com.companyname.springapp.business.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.companyname.springapp.business.entities.Usuario;
import com.companyname.springapp.business.repositories.UsuarioRepository;

@Service
public class JPAUsuarioManager implements UsuarioManager {

    @Autowired
    private UsuarioRepository usuarioRepository;
   
    public Usuario findByUsuario(String usuario) {
	return usuarioRepository.findByUsuario(usuario).get(0);
    }
     
    @Override
    public Usuario findByUserPass(String usuario, String contrasenia) {
		Usuario resp = null;

		// para prevenir sql injection
		usuario = usuario.replace("%", "").replace("_", "").replace(" ", "").replace(";", "");

		List<Usuario> usuarios = usuarioRepository.findByUsuario(usuario);
		for (Usuario user : usuarios) {
			if (contrasenia.equals(user.getContrasenia())) {
				resp = user;
				break;
			}
		};
		return resp;
	}

    @Override
    public void registrarUsuario(String nombre, String usuario, String contrasenia) {
	usuarioRepository.save(new Usuario (nombre, usuario, contrasenia));
	
    }

}