package cinema.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.dal.BigliettoDAO;
import cinema.entities.Biglietto;

@Service
public class BigliettoService implements BigliettoIService{

	@Autowired
	BigliettoDAO dao;
	
	@Override
	public Biglietto addOne(Biglietto b) {		
		return dao.save(b);
	}

	@Override
	public Biglietto update(Biglietto b) {
		Biglietto biglietto = null;
		biglietto=dao.save(b);
		return biglietto;
	}

	@Override
	public void deleteBiglietto(int id) {
		dao.deleteById(id);		
	}

	@Override
	public Biglietto getOne(int id) {
		return dao.getOne(id);
	}

}
