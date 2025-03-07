import java.util.Scanner;


public class sort_string{
	public static void main(String []args){
		String temp;
		int i,j,count;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter the number of string:");
		count = sc.nextInt();
		String[] str = new String[count];
		Scanner c1 = new Scanner(System.in);
		System.out.println("Enter  string one by one : ");
		
		for(i=0;i<count;i++){
			str[i] = c1.nextLine();
			
		}
		System.out.println("String before sorting : ");
		
		for(i=0;i<count;i++){
			System.out.println(str[i]);
			
		}

		for(i=0;i<count;i++){
			for(j=i+1;j<count;j++){
				if((str[i].compareTo(str[j]))>0){
					temp = str[i];
					str[i]=str[j];
					str[j]=temp;
				}

				
			
			}

			
		}
		System.out.println("String after sorting : ");
		
		for(i=0;i<count;i++){
			System.out.println(str[i]);
			
		}


	}
}