package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Utente;
import cinema.service.UtenteService;

@Controller
@RequestMapping("")
public class UtentiCtrl {
	
	@Autowired
	private UtenteService s;
	
	@RequestMapping("/admin/utenti")
	public ModelAndView listaUtenti() {
		
		List<Utente> users = s.getAllUtenti();
		return new ModelAndView("lista_utenti", "utente", users);
		
	}
	

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/prezzi")
	public String prezzi() {
		return "prezzi";
	}
	
	@RequestMapping("/registrazione")
	public String formInserimento() {
		return "form_registrati";
	}
	
//	@RequestMapping(path = "/utenti/addUtente")
//	public ModelAndView addUtente(@ModelAttribute("utente") Utente u) {
//		
//		Utente nuovoUtente = s.addOne(u);
//		nuovoUtente.setTipo("B");
//		nuovoUtente.setFirma("Utente con diritti minimi");
//		
//		return new ModelAndView("form_registrazione", "utente", nuovoUtente);
//		
//
//	}
	
	@RequestMapping(path = "/registrazione/addUtente")
	public String addUtente(@ModelAttribute("utente") Utente u) {
			
		Utente nuovoUtente = null; 
				
		nuovoUtente = s.addOne(u);

		return "redirect:/home";
		

	}
	
	
}
