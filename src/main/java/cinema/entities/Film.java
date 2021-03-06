package cinema.entities;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "film")
public class Film {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String titolo;
	private String genere;
	private String descrizione;
	private int sala;
	@Column(columnDefinition = "TIME")
	@DateTimeFormat(iso = DateTimeFormat.ISO.TIME)
	private LocalTime ora;
	@Column(columnDefinition = "DATE")
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private LocalDate giorno;
	private String link_trailer;
	private String locandina;
	
	public String getLocandina() {
		return locandina;
	}
	public void setLocandina(String locandina) {
		this.locandina = locandina;
	}
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
