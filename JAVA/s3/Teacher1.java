import java.util.Scanner;
class Person{

	String name;
	String gender;
	int age;
	String address;
	
	
	Person(String name,String gender,int age,String address){
		this.age=age;
		this.name=name;
		this.gender=gender;
		this.address=address;
	
	}
}
class Employee extends Person{
	int empid;
	String c_name;
	String qual;
	double sal;
	
	
	Employee(String name,String gender,int age,String address,int empno,String c_name,double sal,String qual){
super(name,gender,age,address);
		this.empid=empno;
		this.c_name=c_name;
		this.sal=sal;
		this.qual=qual;
	
	}
}

class Teacher1 extends Employee{
	String dept;
	String sub;
	int tid;
	Teacher1(String name,String gender,int age,String address,int empno,String c_name,double sal,String qual,String dept1,String sub1,int tid){
	super(name,gender,age,address,empno,c_name,sal,qual);
	this.dept=dept1;
	this.sub=sub1;
	this.tid=tid;
}

void display(){
	System.out.println("Employee id: "+empid);
	System.out.println(" Name: "+name);
	System.out.println(" Gender: "+gender);
	System.out.println(" Age: "+age);
	System.out.println("Address: "+address);

	System.out.println(" Department: "+dept);
	System.out.println("Subject : "+sub);
	System.out.println("Teacher ID : "+tid);

	System.out.println("\n\nCompany Name: "+c_name);
	System.out.println("Qualification: "+qual);
	System.out.println("Salary: "+sal);
	System.out.println("\n\n");
}

public static void main(String args[]){
	System.out.println("\nEnter the no. of teachers");
	Scanner sc = new Scanner(System.in);
	int num = sc.nextInt();
	Teacher1[] arr = new Teacher1[num];
	for (int i =0;i<num;i++){
		Scanner sc1 = new Scanner(System.in);

		System.out.println("\nEnter Name:");
		String empname = sc1.next();
		System.out.println("\nEnter Gender:");
		String gender = sc1.next();
		System.out.println("\nEnter Adrress:");
		String add = sc1.next();
		System.out.println("\nEnter Age:");
		int age = sc1.nextInt();
		System.out.println("\nEnter Employee id:");
		int empid = sc1.nextInt();
		System.out.println("\nEnter Company Name:");
		String cname = sc1.next();
		System.out.println("\nEnter Qualification:");
		String qua = sc1.next();
		System.out.println("\nEnter Salary:");
		double salary = sc1.nextDouble();
		System.out.println("\nEnter Department:");
		String depat = sc1.next();	
		System.out.println("\nEnter Subject:");
		String subj = sc1.next();
		System.out.println("\nEnter Teacher id:");
		int teid = sc1.nextInt();		
		
		arr[i] = new Teacher1(empname,gender,age,add,empid,cname,salary,qua,depat,subj,teid);
	}

			System.out.println("\n---------------Information of all Employees ----------------");
for(int i=0;i<num;i++){
 arr[i].display();
}
sc.close();	
}
}