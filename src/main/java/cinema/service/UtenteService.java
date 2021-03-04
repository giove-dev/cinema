package cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.dal.UtenteDAO;
import cinema.entities.Utente;

@Service
public class UtenteService implements UtenteIService{

	@Autowired
	private UtenteDAO dao;
	
	@Override
	public List<Utente> getAllUtenti() {
		return dao.findAll();
	}

	@Override
	public Utente getOneUtente(String username) {
		return dao.findById(username).get();
	}

}
