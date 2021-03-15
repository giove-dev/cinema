package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Film;
import cinema.service.FilmService;

@Controller
@RequestMapping("")
public class FilmCtrl {

	@Autowired
	private FilmService s;
    
	@RequestMapping("/admin")
	public String homeAdmin() {
		return "adminHome";
	}
	
	
	@RequestMapping("/admin/films")
	public ModelAndView listaFilm() {

		List<Film> films = s.getAll();

		return new ModelAndView("lista_film", "film", films);

	}
	
	@RequestMapping("/catalogo")
	public ModelAndView catalogo() {
		
		List<Film> films = s.getAll();
		
		return new ModelAndView("catalogo", "film", films);
		
	}

	@RequestMapping("/films/dettaglio/{id}")
	public ModelAndView descrizioniFilm(@PathVariable("id") int id) {

		Film film = s.getOne(id);
		return new ModelAndView("dettaglio_film", "film", film);
	}

	@RequestMapping("/admin/films/add")
	public String formInserimento() {
		return "addFilm";
	}

	@RequestMapping(path = "/admin/films/addFilm")
	public String addFilm(@ModelAttribute("film") Film f) {

		Film nuovoFilm = s.addOne(f);

		return "redirect:/films/dettaglio/" + nuovoFilm.getId();

	}

	@RequestMapping("/admin/films/update/{id}")
	public ModelAndView formModifica(@PathVariable("id") int id) {

		Film nuovoFilm = s.getOne(id);

		return new ModelAndView("update_film", "film", nuovoFilm);
	}

	@RequestMapping(path = "/admin/updateFilm/{id}", method = RequestMethod.POST)
	public String updateFilm(@PathVariable("id") int id, @Validated @ModelAttribute("film") Film f) {

		f.setId(id);

		Film nuovoFilm = s.update(f);

		// return "redirect:/admin/films/dettaglio/"+ nuovoFilm.getId();
		return "redirect:/admin/films/";

	}

	@RequestMapping("/admin/films/delete")
	private String deleteFilm(@RequestParam("id") int id) {

		s.deleteFilm(id);

		return "eliminato";
	}

	

	@RequestMapping("/home")
	private ModelAndView home() {
		List<Film> films = s.getAll();
		return new ModelAndView("home", "film", films);
	}

	@RequestMapping("/generi/{genere}")
	private ModelAndView generi(@PathVariable("genere") String genere) {
		List<Film> films = s.getGenere(genere);
		return new ModelAndView("genere_film", "film", films);
	}
	
	@RequestMapping("/calendario")
	public ModelAndView calendario() {
	
	List<Film> films = s.getAll();
	
	return new ModelAndView("calendario", "film", films);
	}
	
	
	@RequestMapping("/search")
//	@GetMapping("/search")
	public String search(@Param("keyword")String keyword, Model model) {
		
		List<Film> searchResult = s.search(keyword);
//		System.out.println("Keyword: " + keyword);
		model.addAttribute("keyword", keyword);
		model.addAttribute("titolo", "Search result for '" + keyword +"'");
		model.addAttribute("searchResult", searchResult);
//		System.out.println("Prova: "+ searchResult);
		return "search_result";
		
	}
	@RequestMapping("lavora")
	public String workWithUs() {
		return "work";
	}
	@RequestMapping("prezzi")
	public String prices() {
		return "price";
	}
	
}