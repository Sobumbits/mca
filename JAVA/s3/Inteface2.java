import java.util.*;
import java.io.*;
import java.lang.*;

interface data{
 void getdata();
 void peri();
 void area();
}


class circle implements data{
        double pi=3.14;
	double r;
	Scanner sc = new Scanner(System.in);
	public void getdata(){
 		System.out.println("Enter the Radius = ");
		r = sc.nextDouble();

	}
	public void peri(){
 		System.out.println("Perimeter = "+(2*pi*r));


	}

	public void area(){
 		System.out.println("Area = "+(pi*r*r));


	}
}

class rectangle implements data{

	double l,b;
	Scanner sc = new Scanner(System.in);
	public void getdata(){
 		System.out.println("Enter the Length = ");
		l = sc.nextDouble();
		System.out.println("Enter the Breadth = ");
		b = sc.nextDouble();
	}
	public void peri(){
 		System.out.println("Perimeter = "+(l*b));


	}

	public void area(){
 		System.out.println("Area = "+(2*(l+b)));


	}
}


class Inteface2{
	public static void main(String[] args){
		int ch;
		Scanner sc = new Scanner(System.in);
		circle c = new circle();
		rectangle r = new rectangle();

		do{
			System.out.println("\n1.Circle\n2.rectangle\n3.Exit");
			System.out.println("Enter your choice:");
			ch = sc.nextInt();
			switch(ch){
				case 1:c.getdata();
					c.peri();
					c.area();
					break;
				case 2:r.getdata();
					r.peri();
					r.area(); 
					break;
				case 3:System.out.println("Exiting...");
					System.exit(0);	
			}
		}while(true);

	}
}
