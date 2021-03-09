package cinema.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "biglietto")
public class Biglietto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String utente_username;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUtente_username() {
		return utente_username;
	}
	public void setUtente_username(String utente_username) {
		this.utente_username = utente_username;
	}
	public int getFilm_id() {
		return film_id;
	}
	public void setFilm_id(int film_id) {
		this.film_id = film_id;
	}
	private int film_id;

	@Override
	public String toString() {
		return "Biglietto [id=" + id + ", utente_username=" + utente_username + ", film_id=" + film_id + "]";
	}
	
	

}
