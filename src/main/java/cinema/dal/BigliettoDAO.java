package cinema.dal;

import org.springframework.data.jpa.repository.JpaRepository;

import cinema.entities.Biglietto;

public interface BigliettoDAO extends JpaRepository<Biglietto, Integer>{
	
}
