package _06_gridworld;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridworld {
public static void main(String[] args) {
	World item= new World();
    Bug bug= new Bug();
	 Location place=new Location(5,5);
    item.add(place,bug);
	Flower bees= new Flower();
	 Location area= new Location(5,8);
	item.add(area, bees);
	
	for (int i = 0; i < 10; i++) {
		Location dog = new Location(7,i);
		Flower nectar= new Flower();
		item.add(dog, nectar);
		
	}
	    for (int i = 0; i < 10; i++) {
			Location location= new Location(i,1);
			Bug thingz = new Bug();
			item.add(location,thingz );
		}
	
	item.show();
	
	
}
}
