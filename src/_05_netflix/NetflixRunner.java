package _05_netflix;

public class NetflixRunner {
public static void main(String[] args) {
	
	Movie movie1 = new Movie ("tranformers", 3);
	 
	Movie  movie2 = new Movie ("Enders game", 2);
	 
	Movie  movie3 = new Movie ("Ready player one", 5);
	 
	Movie  movie4 = new Movie ("superman", 2);
	 
	Movie  movie5 = new Movie ("ma's", 1);
	
	System.out.println(movie1.getTicketPrice());
	
	NetflixQueue NQ = new NetflixQueue(); 
	
	NQ.addMovie(movie1);
	NQ.addMovie(movie2);
	NQ.addMovie(movie3);
	NQ.addMovie(movie4);
	NQ.addMovie(movie5);
	
	NQ.printMovies();
	
	Movie best = NQ.getBestMovie();
	System.out.println(best);
	NQ.sortMoviesByRating();
	
	Movie secondbest=NQ.getMovie(2);
	System.out.println("The second Best movie IS "+secondbest);
}
}
