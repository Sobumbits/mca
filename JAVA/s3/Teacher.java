import java.util.Scanner;
class Employee{
	int empid;
	String name;
	double salary;
	String address;
	
	
	Employee(int empno,String emp_name,double sal,String add){
		this.empid=empno;
		this.name=emp_name;
		this.salary=sal;
		this.address=add;
	
	}
}

class Teacher extends Employee{
	String dept;
	String sub;
	Teacher(int empno,String emp_name,double sal,String add,String dept1,String sub1){
	super(empno,emp_name,sal,add);
	this.dept=dept1;
	this.sub=sub1;
}

void display(){
	System.out.println("Employee id: "+empid);
	System.out.println(" Name: "+name);

	System.out.println(" Salary: "+salary);

	System.out.println("Address: "+address);

	System.out.println(" Department: "+dept);
	System.out.println("Subject : "+sub);


}

public static void main(String args[]){
	System.out.println("\nEnter the no. of employees");
	Scanner sc = new Scanner(System.in);
	int num = sc.nextInt();
	Teacher[] arr = new Teacher[num];
	for (int i =0;i<num;i++){
		Scanner sc1 = new Scanner(System.in);
		System.out.println("\nEnter employee id:");
		int emp_id = sc1.nextInt();
		System.out.println("\nEnter employee Name:");
		String empname = sc1.next();
		System.out.println("\nEnter Salary:");
		double empsal = sc1.nextDouble();
		System.out.println("\nEnter Adrress:");
		String empadd = sc1.next();
		System.out.println("\nEnter Department:");
		String depat = sc1.next();	
		System.out.println("\nEnter Subject:");
		String subj = sc1.next();		
		
		arr[i] = new Teacher(emp_id,empname,empsal,empadd,depat,subj);
	}

			System.out.println("\n---------------Information of all Employees ----------------");
for(int i=0;i<num;i++){
 arr[i].display();
}
sc.close();	
}
}