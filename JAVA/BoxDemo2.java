class Box{
	double length;
	double width;
	double depth;

	void volume(){
		return width*length*depth;
	}

	void setDim(double w ,double d,double l){
		width = w;
		depth = d;
		length = l;
	}
}

class BoxDemo3{
	public static void main(String args[]){
		Box mybox = new Box();
		Box mybox1 = new Box();
		double vol,vol1;
		mybox.setDim(10,15,9);
		mybox1.setDim(10,20,2);
		
		vol = mybox.volume();
		vol1 = mybox1.volume();
		System.out.println("Volume of first box is "+vol);
		System.out.println("Volume of second box is "+vol1);
	}
}