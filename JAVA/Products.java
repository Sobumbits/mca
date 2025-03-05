class Product{
	String pcode;
	String pname;
	double price;

	public void productDetails(String code,String name,double amt){
		pcode = code;
		pname = name;
		price = amt;

	}
	
	public double getPrice(){
		return price;
	}
	public void display(){
		System.out.println("Product Code : "+pcode);
		System.out.println("Product Name : "+pname);
		System.out.println("Product Price : "+price);
	}
	
}


class Products{
	public static void main(String args[]){
		Product product1 = new Product();
		product1.productDetails("P001","Salop",1235);
		Product product2 = new Product();
		product2.productDetails("P002","Soap",1986);
		Product product3 = new Product();
		product3.productDetails("P003","Rampoo",1598);

		Product lowestCost = product1;
		
		if(product2.getPrice() < lowestCost.getPrice()){
			lowestCost = product2;
		}
		if(product3.getPrice() < lowestCost.getPrice()){
			lowestCost = product3;
		}
		System.out.println("Products with lowest price is ");
		lowestCost.display();
	}
}