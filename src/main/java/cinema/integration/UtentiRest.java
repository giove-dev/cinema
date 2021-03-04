package cinema.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cinema.entities.Utente;
import cinema.service.UtenteIService;

@RestController
@RequestMapping("/api")
public class UtentiRest {
	
	@Autowired
	private UtenteIService s;
	
	@GetMapping("/utenti")
	List<Utente> getAll(){
		return s.getAllUtenti(); 
	}
	
	@CrossOrigin
	@GetMapping("/utente/{username}")
	Utente getOne(@PathVariable("username") String username){
		return s.getOneUtente(username); 
	}

}
