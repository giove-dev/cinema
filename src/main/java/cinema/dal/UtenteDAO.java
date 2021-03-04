package cinema.dal;

import org.springframework.data.jpa.repository.JpaRepository;

import cinema.entities.Utente;

public interface UtenteDAO extends JpaRepository<Utente, String>{

}
