package cinema.dal;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cinema.entities.Film;


public interface FilmDAO extends JpaRepository<Film, Integer> {
	
	List<Film> findByGenere(String genere);
	List<Film> findBySala(int sala);
	
	
	//(?1) è la prima keyword. Si può inserire anche la descrizione del film volendo
	@Query(value = "SELECT * FROM film WHERE MATCH(titolo, genere) AGAINST (?1)", nativeQuery = true)
	List<Film> search(String keyword);

}