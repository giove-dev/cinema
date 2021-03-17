package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
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
	public ModelAndView viewAdminFilmsHomePage(Model model) {
	    return listaFilmPaged(model, 1);
	}
	
	@RequestMapping("/admin/films/{pageNum}")
	public ModelAndView listaFilmPaged(Model model, @PathVariable(name = "pageNum") int pageNum) {
		
		Page<Film> page = s.getAllPaged(pageNum);
	
		List<Film> films = page.getContent();
		
		model.addAttribute("currentPage", pageNum);
		//prende il numero di pagine presenti in base a quanti items vuoi visualizzare (5) per pagina e quanti items ci sono
	    model.addAttribute("totalPages", page.getTotalPages());
	    //prende il numero di quanti film (items) ci sono
	    model.addAttribute("totalItems", page.getTotalElements());
	    model.addAttribute("listProducts", films);
	    
		return new ModelAndView("lista_film", "film", films);
		
	}
	
	@RequestMapping("/catalogo")
	public ModelAndView viewCatalogo(Model model) {
	    return catalogoPaged(model, 1);
	}
		
	@RequestMapping("/catalogo/{pageNum}")
	public ModelAndView catalogoPaged(Model model, @PathVariable(name = "pageNum") int pageNum) {
		
		Page<Film> page = s.getAllPaged(pageNum);
	
		List<Film> films = page.getContent();
		
		model.addAttribute("currentPage", pageNum);
		//prende il numero di pagine presenti in base a quanti items vuoi visualizzare (5) per pagina e quanti items ci sono
	    model.addAttribute("totalPages", page.getTotalPages());
	    //prende il numero di quanti film (items) ci sono
	    model.addAttribute("totalItems", page.getTotalElements());
	    model.addAttribute("listProducts", films);
		
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
	
	
//	@RequestMapping("/search")
	@GetMapping("/search") // dubbio su cosa cambi da Get a Request. Funziona in entrambi i modi per adesso
	public String search(@Param("keyword")String keyword, Model model) {
		
		List<Film> searchResult = s.search(keyword);
//		System.out.println("Keyword: " + keyword); //per visualizzare in console, test
		model.addAttribute("keyword", keyword);
		model.addAttribute("titolo", "Search result for '" + keyword +"'");
		model.addAttribute("searchResult", searchResult);
//		System.out.println("Prova: "+ searchResult); //per visualizzare in console, test
		return "search_result";
		
	}
	
//	@RequestMapping("/search")
	@GetMapping("admin/search") // dubbio su cosa cambi da Get a Request. Funziona in entrambi i modi per adesso
	public String searchAdmin(@Param("keyword")String keyword, Model model) {
		
		List<Film> searchResult = s.search(keyword);
//		System.out.println("Keyword: " + keyword); //per visualizzare in console, test
		model.addAttribute("keyword", keyword);
		model.addAttribute("titolo", "Search result for '" + keyword +"'");
		model.addAttribute("searchResult", searchResult);
//		System.out.println("Prova: "+ searchResult); //per visualizzare in console, test
		return "search_result";
		
	}
	@RequestMapping("lavora")
	public String workWithUs() {
		return "work";
	}
	
	@RequestMapping("nessunRisultato")
	public String noResultsFound() {
		return "noResult";
	}
	@RequestMapping("/admin/eventi")
	public ModelAndView eventi() {
	
	List<Film> films = s.getAll();
	
	return new ModelAndView("calendario_admin", "film", films);
	}
	
	
	@RequestMapping("sedi")
	public String nostriCinema() {
		return "nostriCinema";
	}
	
}