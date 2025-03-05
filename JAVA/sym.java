import java.util.Scanner;
public class sym{
public static void main(String args[]){
	int row,col,i,j;
	Scanner sc = new Scanner(System.in);
	System.out.println("Enter the number of rows: ");
	row = sc.nextInt();
	System.out.println("Enter the number of cols: ");
	col = sc.nextInt();
	int matrix[][] = new int[row][col];
	boolean state=true;
	
	for( i=0;i<row;i++){
		for(j=0;j<col;j++){
			System.out.println("Enter the element at M("+i+","+j+")");
			matrix[i][j] = sc.nextInt();

		}
	}

	for( i=0;i<row;i++){
		for(j=0;j<col;j++){
			if(matrix[i][j]!=matrix[j][i]){
				state=false;
				break;
			}
		}
	}
	if(state){
		System.out.println("Matrix is symmetric.");
	}else{
		System.out.println("Matrix is Asymmetric.");
	}

	}
	
}