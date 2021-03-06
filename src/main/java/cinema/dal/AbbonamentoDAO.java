package cinema.dal;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cinema.entities.Abbonamento;

public interface AbbonamentoDAO extends JpaRepository<Abbonamento, Integer>{

	@Query(value = "SELECT * FROM abbonamento WHERE utente_username = (?1)", nativeQuery = true)
	List<Abbonamento> search(String keyword);
	
}
