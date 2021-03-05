package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Utente;
import cinema.service.UtenteService;

@Controller
@RequestMapping("/admin")
public class UtentiCtrl {
	
	@Autowired
	private UtenteService s;
	
	@RequestMapping("/utenti")
	public ModelAndView listaUtenti() {
		
		List<Utente> users = s.getAllUtenti();
		return new ModelAndView("lista_utenti", "utente", users);
		
	}
	
}
