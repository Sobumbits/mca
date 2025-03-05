class Large{
	public static void main(String args[]){
		int a = 10, b = 6 ,c = 19, large = a;
		if(large > b) large = b;
		if(large > c) large = c;
		System.out.print("The largest number is  ");
		System.out.println(large);
	}
}