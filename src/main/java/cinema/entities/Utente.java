package cinema.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "utenti")
public class Utente {
	
	@Column(columnDefinition = "TIMESTAMP")
	private LocalDateTime ultimamodifica; 
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String username;
	
	private String password;
	private String firma;
	private String tipo;
	private String nome;
	private String cognome;
	private String nascita;
	private String email;
	@Column(columnDefinition = "TIMESTAMP")
	private LocalDateTime dataiscrizione;	
	
	public LocalDateTime getUltimamodifica() {
		return ultimamodifica;
	}
	public void setUltimamodifica(LocalDateTime ultimamodifica) {
		this.ultimamodifica = ultimamodifica;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirma() {
		return firma;
	}
	public void setFirma(String firma) {
		this.firma = firma;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getNascita() {
		return nascita;
	}
	public void setNascita(String nascita) {
		this.nascita = nascita;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public LocalDateTime getDataiscrizione() {
		return dataiscrizione;
	}
	public void setDataiscrizione(LocalDateTime dataiscrizione) {
		this.dataiscrizione = dataiscrizione;
	}
	@Override
	public String toString() {
		return "Utente [ultimamodifica=" + ultimamodifica + ", username=" + username + ", password=" + password
				+ ", firma=" + firma + ", tipo=" + tipo + ", nome=" + nome + ", cognome=" + cognome + ", nascita="
				+ nascita + ", email=" + email + ", dataiscrizione=" + dataiscrizione + "]";
	}
	
	
}
