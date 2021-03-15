package cinema.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "abbonamento")
public class Abbonamento {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int rimanenza;
	private String utente_username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRimanenza() {
		return rimanenza;
	}
	public void setRimanenza(int rimanenza) {
		this.rimanenza = rimanenza;
	}
	public String getUtente_username() {
		return utente_username;
	}
	public void setUtente_username(String utente_username) {
		this.utente_username = utente_username;
	}
	

}
