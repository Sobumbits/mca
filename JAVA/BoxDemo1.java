class Box{
	double length;
	double width;
	double depth;
}

class BoxDemo1{
	public static void main(String args[]){
		Box mybox = new Box();
		Box mybox1 = new Box();
		double vol,vol1;
		mybox.length = 10;
		mybox.width = 15;
		mybox.depth = 5;

		mybox1.length = 20;
		mybox1.width = 15;
		mybox1.depth = 9;
		vol = mybox.width*mybox.length*mybox.depth;
		vol1 = mybox1.width*mybox1.length*mybox1.depth;
		System.out.println("Volume of first box is "+vol);
		System.out.println("Volume of second box is "+vol1);
	}
}