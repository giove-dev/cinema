package cinema.integration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cinema.entities.Film;
import cinema.service.FilmIService;

@RestController
@CrossOrigin
@RequestMapping("/api")
public class FilmRest {
	
	@Autowired
	private FilmIService s;
	
	@GetMapping("/films")
	List<Film> getAll(){
		return s.getAll();
		
	}
  @GetMapping("/films/{id}")
  Film getOne(@PathVariable("id") int id) {
	  return s.getOne(id);
  }
}
