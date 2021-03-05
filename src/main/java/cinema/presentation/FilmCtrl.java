package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	@RequestMapping("/update/{id}")
	public ModelAndView formModifica(@PathVariable("id") int id) {
		
		Film nuovoFilm = s.getOne(id);
		
		return new ModelAndView("update_film", "film",nuovoFilm);
	}
	
	@RequestMapping(path = "/updateFilm/{id}", method = RequestMethod.POST)
	public String updateFilm(@PathVariable("id") int id, @Validated @ModelAttribute("film") Film f) {
		
		f.setId(id);
		
		Film nuovoFilm = s.update(f);
		
		return "redirect:/admin/films/"+ nuovoFilm.getId();
	
	}
	
	@RequestMapping("/delete")
	private String deleteFilm(@RequestParam("id") int id) {
		
		s.deleteOne(id);

		return "eliminato";
	}
}