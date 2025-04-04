import java.util.Scanner;

class vehicle {
    double mileage;
    double price;

    vehicle(double mileage, double price) {
        this.mileage = mileage;
        this.price = price;
    }
}

class car extends vehicle {
    double ownership_cost;
    int warranty;
    String fuel;

    car(double mileage, double price, double cost, int year, String f) {
        super(mileage, price);
        ownership_cost = cost;
        warranty = year;
        fuel = f;
    }
}

class maruthi extends car {
    String model;

    maruthi(String model, double mileage, double price, double cost, int year, String f) {
        super(mileage, price, cost, year, f);
        this.model = model;
    }

    void display() {
        System.out.println("Maruthi Car Details");
        System.out.println("Car Model: " + model);
        System.out.println("Car On Road Price: " + ownership_cost);
        System.out.println("Warranty: " + warranty);
        System.out.println("Fuel: " + fuel);
        System.out.println("Mileage: " + mileage);
        System.out.println("Ex-showroom Price: " + price);
    }

    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number of vehicles to enter: ");
        int num = sc.nextInt();
        maruthi arr[] = new maruthi[num];
        int x = 0, j = 0;
        Scanner sc1 = new Scanner(System.in);  

        for (int i = 0; i < num; i++) {
            x = i + 1;
            System.out.println("\n" + x + ").");
            System.out.println("Enter Car Model:");
            String model1 = sc1.next();  

            System.out.println("Enter Car On Road Price:");
            double price = sc1.nextDouble();
            System.out.println("Enter Warranty by year:");
            int year = sc1.nextInt();


            System.out.println("Enter Fuel Type (Diesel/Petrol):");
            String fuel1 = sc1.next(); 

            System.out.println("Enter Mileage:");
            double mileage = sc1.nextDouble();
            System.out.println("Enter Ex-showroom Price:");
            double cost = sc1.nextDouble();

            arr[i] = new maruthi(model1, mileage, price, cost, year, fuel1);
        }

        sc.close();

        System.out.println("\n******** Informations of all cars **************");
        for (int i = 0; i < num; i++) {
            j = i + 1;
            System.out.println("\n" + j + ").");
            arr[i].display();
        }
    }
}
