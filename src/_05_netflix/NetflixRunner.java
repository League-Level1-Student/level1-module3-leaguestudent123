package _05_netflix;

public class NetflixRunner {
public static void main(String[] args) {
	
	Movie movie1 = new Movie ("tranformers", 3);
	 
	Movie  movie2 = new Movie ("Enders game", 2);
	 
	Movie  movie3 = new Movie ("Ready player one", 5);
	 
	Movie  movie4 = new Movie ("superman", 4);
	 
	Movie  movie5 = new Movie ("ma's", 1);
	
	System.out.println(movie1.getTicketPrice());
	
	NetflixQueue NQ = new NetflixQueue(); 
	
	
}
}
