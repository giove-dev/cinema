package cinema.entities;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "film")
public class Film {
	//prova commento 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String titolo;
	private String genere;
	private String descrizione;
	private int sala;
	@Column(columnDefinition = "TIME")
	private LocalTime ora;
	@Column(columnDefinition = "DATE")
	private LocalDate giorno;
	private String link_trailer;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getGenere() {
		return genere;
	}
	public void setGenere(String genere) {
		this.genere = genere;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public int getSala() {
		return sala;
	}
	public void setSala(int sala) {
		this.sala = sala;
	}

	public LocalTime getOra() {
		return ora;
	}
	public void setOra(LocalTime ora) {
		this.ora = ora;
	}
	public LocalDate getGiorno() {
		return giorno;
	}
	public void setGiorno(LocalDate giorno) {
		this.giorno = giorno;
	}
	public String getLink_trailer() {
		return link_trailer;
	}
	public void setLink_trailer(String link_trailer) {
		this.link_trailer = link_trailer;
	}
	
	
	
	
	
	
	

}
