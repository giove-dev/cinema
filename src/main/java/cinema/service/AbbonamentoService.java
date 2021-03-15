package cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.dal.AbbonamentoDAO;
import cinema.entities.Abbonamento;

@Service
public class AbbonamentoService implements AbbonamentoIService {

	@Autowired
	private AbbonamentoDAO dao;

	@Override
	public Abbonamento add(Abbonamento a) {
		return dao.save(a);
	}

	@Override
	public void delete(int id) {
		dao.deleteById(id);
	}

	@Override
	public Abbonamento getOne(int id) {
		return dao.getOne(id);
	}

	@Override
	public Abbonamento update(Abbonamento a) {
		Abbonamento abb = null;
		abb = dao.save(a);
		return abb;
	}

	@Override
	public List<Abbonamento> getAll() {
		return dao.findAll();
	}

}
