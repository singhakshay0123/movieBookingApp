package moviebooking.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import moviebooking.model.Movie;


@Component
public class MovieDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createMovie(Movie movie) {
		
		this.hibernateTemplate.saveOrUpdate(movie);
	}
	
	//get the single product
	public Movie getMovie(int mid) {
		return this.hibernateTemplate.get(Movie.class, mid);
	}
	
	//get all products
	public List<Movie> getMovies(){
		List<Movie>movies=this.hibernateTemplate.loadAll(Movie.class);
		return movies;
	}
	
	//delete single product
	@Transactional
	public void deleteMovie(int mid) {
		Movie m=this.hibernateTemplate.load(Movie.class,mid);
		this.hibernateTemplate.delete(m);
	}
}