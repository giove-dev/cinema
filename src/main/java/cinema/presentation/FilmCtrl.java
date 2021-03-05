package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Film;
import cinema.service.FilmIService;

@Controller
@RequestMapping("/admin")
public class FilmCtrl {
	
	@Autowired
	private FilmIService s;
	
	@RequestMapping("/films")
	public ModelAndView listaFilm() {
		
		List<Film> films = s.getAll();
		
		
		return new ModelAndView("lista_film", "film", films);
		
	}
	
	@RequestMapping("/dettaglio/{id}")
	public ModelAndView descrizioniFilm(@PathVariable("id") int id) {
		
		List<Film> films = s.getAll();
		return new ModelAndView("dettaglio_film", "film", films);
	}
	
	@RequestMapping("/add")
	public String formInserimento() {
		return "addFilm";
	}
	
	@RequestMapping(path = "/addFilm")
	public String addFilm(@ModelAttribute("film") Film f) {
		
		Film nuovoFilm = s.addOne(f);
		
		return "redirect:/admin/dettaglio/"+nuovoFilm.getId();
	}
	
	

}
