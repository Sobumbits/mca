package GraphicS;

import java.util.Scanner;

interface figures{
	void rectangle();
	void triangle();
	void square();
	void circle();
}

public class Area implements figures{
	Scanner sc = new Scanner(System.in);
	public void rectangle(){
		System.out.println("Enter the length: ");
		int l = sc.nextInt();
		
		System.out.println("Enter the breadth: ");
		int b = sc.nextInt();

		System.out.println("Area of rectangle: "+(l*b));
	}
	public void triangle(){
		System.out.println("Enter the base: ");
		int base = sc.nextInt();
		
		System.out.println("Enter the height: ");
		int h = sc.nextInt();

		System.out.println("Area of triangle: "+(0.5*base*h));
	}
	public void square(){
		System.out.println("Enter the side: ");
		int side = sc.nextInt();

		System.out.println("Area of square: "+(side*side));
	}
	public void circle(){
		System.out.println("Enter the radius: ");
		int r = sc.nextInt();

		System.out.println("Area of circle: "+(Math.PI*r*r));
	}


}