import java.util.Scanner;
class sports {
    String sport;
    int rating;
    sports(String spo,int ra){
        sport=spo;
        rating=ra;
    }
}
class student extends sports{
    String grade;
    double overall;
    student(String spo,int ra,String gd,double per){
        super(spo,ra);
        grade=gd;
        overall=per;
    }
}
public class result extends student{
    result(String spo,int ra,String gd, double per){
        super(spo,ra,gd,per);

    }
    void display(){
        System.out.println("\nSports details of students");
        System.out.println("\nSport " + sport);
        System.out.println("\nRating " + rating);
        System.out.println("\nAcademic Details of students");
        System.out.println("Academic Grade " + grade);
        System.out.println("Overall Percentage " + overall);
    }

    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("\nEnter Sports details of students");
        System.out.println("\n Sport:");
        String a= sc.next();
        System.out.println("\n Sprt Rating Out of 10: ");
        int b=sc.nextInt();
        System.out.println("\nEnter Academic Details of students");
        System.out.println("\nAcademic Grade :");
        String c = sc.next();
        System.out.println("\n Overall Percentage : ");
        double d =sc.nextDouble();
        sc.close();
        result obj = new result(a,b,c,d);
        obj.display();
    }
}

