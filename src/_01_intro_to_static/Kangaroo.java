package _01_intro_to_static;

public class Kangaroo {
	static int feetToJump;
	
	Kangaroo(int f){
		feetToJump = f;
	}
	
	public static void jump() {
		System.out.println("Kangaroo is jumping " + feetToJump + " feet");
	}
}
