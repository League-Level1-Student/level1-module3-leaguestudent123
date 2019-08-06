package _01_intro_to_static;

public class StaticPractice {
	public static void main(String[] args) {
		Kangaroo moo = new Kangaroo(15);
		Kangaroo roo = new Kangaroo(10);
		Kangaroo boo = new Kangaroo(2);
		Kangaroo noo = new Kangaroo(4);
		
		Kangaroo.jump();
		Kangaroo.jump();
		Kangaroo.jump();
		Kangaroo.jump();
	}
}
