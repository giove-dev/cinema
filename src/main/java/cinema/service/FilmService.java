package cinema.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cinema.dal.FilmDAO;
import cinema.entities.Film;

@Service
public class FilmService implements FilmIService {

	@Autowired 
	private FilmDAO dao;
	@Override
	public List<Film> getAll() {
		// TODO Auto-generated method stub
		
		return dao.findAll();
	}

	@Override
	public Film getOne(int id) {
		
		return dao.findById(id).get();
	}

//	@Override
//	public Set<String> getGeneri() {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<Film> getGenere(String genere) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public Film addOne(Film f) {
	
		return dao.save(f);
	}

	@Override
	public Film update(Film f) {
	Film film = null;
	film=dao.save(f);
	return film;
	
	}
	
	@Override
	public void deleteById(int id) {
		dao.deleteById(id);	
	}
	
	
}
