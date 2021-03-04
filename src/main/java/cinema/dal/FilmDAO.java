package cinema.dal;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cinema.entities.Film;


public interface FilmDAO extends JpaRepository<Film, Integer> {
	
	List<Film> findByGenere(String genere); 

}