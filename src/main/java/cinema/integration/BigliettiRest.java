package cinema.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cinema.entities.Biglietto;
import cinema.service.BigliettoIService;

@RestController
@CrossOrigin
@RequestMapping("/api")
public class BigliettiRest {
	
	@Autowired
	private BigliettoIService s;
	
	@GetMapping("/biglietti")
	List<Biglietto> getAll(){
		return s.getAll();
		
	}

}
