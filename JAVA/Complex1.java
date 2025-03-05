class Complex{
	double img,real;
	public void set(double rp,double ip){
		real = rp;
		img = ip;
	}
	
	public void display(){
		if(img<0)
			System.out.println(real+"-"+Math.abs(img)+"i");
		else
			System.out.println(real+"+"+img+"i");
	}
	
	public Complex add(Complex c){
		double resultReal = real+c.real;
		double resultImg = img+c.img;
		Complex sum = new Complex();
		sum.set(resultReal,resultImg);
		return sum;
	}

}

class Complex1{
	public static void main(String args[]){
		Complex c1 = new Complex();
		c1.set(5,-1);
		Complex c2 = new Complex();
		c2.set(5,10);

		System.out.println("Complex 1 is ");
		c1.display();

		System.out.println("Complex 2 is ");
		c2.display();

		Complex sum = c1.add(c2);
		System.out.println("Sum of Complex numbers ");
		sum.display();
	}
}