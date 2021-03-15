package cinema.service;

import java.util.List;

import cinema.entities.Abbonamento;

public interface AbbonamentoIService {
	
	Abbonamento add(Abbonamento a);
	Abbonamento getOne(int id);
	List<Abbonamento> getAll();
	Abbonamento update(Abbonamento a);
	void delete(int id);
	

}
