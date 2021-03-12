package cinema.presentation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cinema.entities.Film;
import cinema.service.FilmService;

@Controller
@RequestMapping("")
public class SalaCtrl {
	@Autowired
	private FilmService s;
	@RequestMapping("/admin/sala/{sala}")
	public ModelAndView filmPerSala(@PathVariable("sala") int sala) {

		List<Film> films = s.getAllBySala(sala);
		return new ModelAndView("sala_film", "film", films);
	}
}
