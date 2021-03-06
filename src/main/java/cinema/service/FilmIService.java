package cinema.service;

import java.util.List;

import org.springframework.data.domain.Page;

import cinema.entities.Film;

public interface FilmIService {
	
	List<Film> getAll(); 
	Film getOne(int id); 
	List<Film> getAllBySala(int sala);
//	Set<String> getGeneri(); 
	List<Film> getGenere(String genere); 
	Film addOne(Film f);
	Film update(Film f);
	void deleteFilm(int id);
	List<Film> search(String keyword);
	Page<Film> getAllPaged(int pageNum);
	

}
