package moviebooking.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import moviebooking.dao.MovieDao;
import moviebooking.model.Movie;

@Controller
public class MainController {
	@Autowired
	private MovieDao movieDao;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<Movie> movies=movieDao.getMovies();
		m.addAttribute("movies",movies);
		return "index";
	}
	
	//show add product form
	@RequestMapping("/add-movie")
	public String addMovie(Model m) {
		m.addAttribute("title","Add Movie");
		return "add_movie_form";
	}
	
	//handle add product form
	@RequestMapping(value="/handle-movie" ,method=RequestMethod.POST)
	public RedirectView handleMovie(@ModelAttribute Movie movie,HttpServletRequest request) {
		movieDao.createMovie(movie);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	//delete handler
	@RequestMapping("/delete/{movieId}")
	public RedirectView deleteMovie(@PathVariable("movieId") int movieId,HttpServletRequest request) {
		this.movieDao.deleteMovie(movieId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	//Update handler
	@RequestMapping("/update/{movieId}")
	public String updateForm(@PathVariable("movieId") int mid,Model model) {
		Movie movie=this.movieDao.getMovie(mid);
		model.addAttribute("movie",movie);
		
		return "update_form";
	}
	
	//buying ticket form
	@RequestMapping("/buy-ticket")
	public String buyTicket(Model m) {
		
		return "buy_ticket";
	}
	
	//buying tickets handler
	@RequestMapping(value="/handle-ticket" )
	public RedirectView Movie(@ModelAttribute Movie movie,HttpServletRequest request) {
		int id=movie.getId();
		movie.setId(id);
		int ticketsEntered=movie.getTicket();
		Movie m=movieDao.getMovie(id);
		int remainingTickets=m.getTicket()-ticketsEntered;
		
		movie.setTicket(remainingTickets);
		movieDao.createMovie(movie);
		
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
}
