package cinema.presentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Abbonamento;
import cinema.entities.Film;
import cinema.service.AbbonamentoService;
import cinema.service.BigliettoService;

@Controller
@RequestMapping("")
public class AbbonamentoCtrl {
	
	@Autowired
	AbbonamentoService s;
	
	@RequestMapping("/abbonamento/add")
	public String formInserimento() {
		return "addAbbonamento";
	}

	@RequestMapping(path = "/abbonamento/addAbbonamento")
	public String addAbb(@ModelAttribute("abbonamento") Abbonamento a) {

		Abbonamento abbonamento = s.add(a);

		return "redirect:/abbonamento/dettaglio/" + abbonamento.getId();

	}
	
	@RequestMapping("/abbonamento/dettaglio/{id}")
	public ModelAndView dettaglioAbb(@PathVariable("id") int id) {

		Abbonamento abbonamento = s.getOne(id);
		return new ModelAndView("dettaglio_abbonamento", "abbonamento", abbonamento);
	}
	
	@RequestMapping("/abbonamento/delete")
	private String deleteAbb(@RequestParam("id") int id) {

		s.delete(id);

		return "eliminato";
	}
	
	@RequestMapping("/abbonamento/update/{id}")
	public ModelAndView formModifica(@PathVariable("id") int id) {

		Abbonamento abb = s.getOne(id);

		return new ModelAndView("update_abb", "abbonamento", abb);
	}

	@RequestMapping(path = "/abbonamento/updateAbb/{id}", method = RequestMethod.POST)
	public String updateFilm(@PathVariable("id") int id, @Validated @ModelAttribute("abbonamento") Abbonamento a) {

		a.setId(id);

		Abbonamento abbonamento = s.update(a);

		// return "redirect:/admin/films/dettaglio/"+ nuovoFilm.getId();
		return "redirect:/abbonamento/dettaglio/"+ abbonamento.getId();

	}
	

}
