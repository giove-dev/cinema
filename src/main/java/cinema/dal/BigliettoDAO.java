package cinema.dal;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cinema.entities.Biglietto;

public interface BigliettoDAO extends JpaRepository<Biglietto, Integer>{
	
	@Query(value = "SELECT * FROM biglietto WHERE utente_username = (?1)", nativeQuery = true)
	List<Biglietto> search(String keyword);
	
}
