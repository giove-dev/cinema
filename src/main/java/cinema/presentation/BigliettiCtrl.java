package cinema.presentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Biglietto;
import cinema.service.BigliettoIService;

@Controller
@RequestMapping("")
public class BigliettiCtrl {
	
	@Autowired
	BigliettoIService s;
	
	@RequestMapping("/biglietto/add")
	public String formInserimento() {
		return "addBiglietto";
	}
	
	@RequestMapping(path = "/biglietto/addBiglietto")
	public String addBigl(@ModelAttribute("biglietto") Biglietto b) {
		
		Biglietto nuovoB = s.addOne(b);
		
		return "redirect:/biglietto/dettaglio/"+nuovoB.getId();
		
	}
	
	@RequestMapping("/biglietto/dettaglio/{id}")
	public ModelAndView descrizioneBigl(@PathVariable("id") int id) {
		
		Biglietto nuovoB = s.getOne(id);
		
		return new ModelAndView("dettaglio_biglietto", "biglietto", nuovoB);
	}

}
