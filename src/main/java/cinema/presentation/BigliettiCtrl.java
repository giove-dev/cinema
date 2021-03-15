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

import cinema.entities.Biglietto;
import cinema.entities.Film;
import cinema.service.BigliettoService;
import cinema.service.FilmService;

@Controller
@RequestMapping("")
public class BigliettiCtrl {
	
	@Autowired
	BigliettoService s;
	@Autowired
	private FilmService fs;
	
	@RequestMapping("/biglietto/add/{id}")
	public ModelAndView add(@PathVariable("id") int id) {

		Film film = fs.getOne(id);
		
		return new ModelAndView("addBiglietto", "film", film);
	}
	
	@RequestMapping(path = "/biglietto/add/addBiglietto")
	public String addBigl(@ModelAttribute("biglietto") Biglietto b) {
		
		Biglietto nuovoB = s.addOne(b);
		
		return "redirect:/biglietto/dettaglio/"+nuovoB.getId();
		
	}
	
	@RequestMapping("/biglietto/dettaglio/{id}")
	public ModelAndView descrizioneBigl(@PathVariable("id") int id) {
		
		Biglietto nuovoB = s.getOne(id);
		
		return new ModelAndView("dettaglio_biglietto", "biglietto", nuovoB);
	}
	
	@RequestMapping("/biglietto/delete")
	private String deleteBigl(@RequestParam("id") int id) {

		s.deleteBiglietto(id);;

		return "eliminato";
	}
	
	@RequestMapping("/biglietto/update/{id}")
	public ModelAndView formModifica(@PathVariable("id") int id) {

		Biglietto biglietto = s.getOne(id);

		return new ModelAndView("update_biglietto", "biglietto", biglietto);
	}

	@RequestMapping(path = "/biglietto/updateBiglietto/{id}", method = RequestMethod.POST)
	public String updateFilm(@PathVariable("id") int id, @Validated @ModelAttribute("biglietto") Biglietto b) {

		b.setId(id);

		Biglietto newB = s.update(b);

		// return "redirect:/admin/films/dettaglio/"+ nuovoFilm.getId();
		return "redirect:/biglietto/dettaglio/"+ newB.getId();

	}
	
	@RequestMapping("/biglietti")
	public String Bigl() {
				
		return "biglietti";
		
	}
	
	@RequestMapping("/biglietti/utente")
//	@GetMapping("/search")
	public String search(@Param("keyword")String keyword, Model model) {
		
		List<Biglietto> searchResult = s.search(keyword);
//		System.out.println("Keyword: " + keyword);
		model.addAttribute("keyword", keyword);
		model.addAttribute("utente_username", "Search result for '" + keyword +"'");
		model.addAttribute("searchResult", searchResult);
//		System.out.println("Prova: "+ searchResult);
		return "biglietti_utente";
	}

}
