package cinema.service;

import java.util.List;

import cinema.entities.Biglietto;

public interface BigliettoIService {
	
	Biglietto addOne(Biglietto b);
	Biglietto update(Biglietto b);
	List<Biglietto> getAll(); 
	Biglietto getOne(int id); 
//	List<Film> getAllBySala(int sala);
//	Set<String> getGeneri(); 
//	List<Film> getGenere(String genere); 
//	Film addOne(Film f);
//	Film update(Film f);
	void deleteBiglietto(int id);


}
