package cinema.service;

import java.util.List;

import cinema.entities.Utente;

public interface UtenteIService {
	
	
	
	List<Utente> getAllUtenti();
	Utente getOneUtente(String username); 

}
