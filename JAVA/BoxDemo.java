class Box{
	double length;
	double width;
	double depth;
}

class BoxDemo{
	public static void main(String args[]){
		Box mybox = new Box();
		double vol;
		mybox.length = 10;
		mybox.width = 15;
		mybox.depth = 5;
		vol = mybox.width*mybox.length*mybox.depth;
		System.out.println("Volume is "+vol);
	}
}