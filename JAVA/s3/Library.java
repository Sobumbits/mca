import java.util.Scanner;

class Book {
    int accessionNumber;
    String title;
    String author;
    String edition;
    String publisher;

    Book(int accessionNumber, String title, String author, String edition, String publisher) {
        this.accessionNumber = accessionNumber;
        this.title = title;
        this.author = author;
        this.edition = edition;
        this.publisher = publisher;
    }

    void display() {
        System.out.println("\nBook Information:");
        System.out.println("Accession Number: " + accessionNumber);
        System.out.println("Title: " + title);
        System.out.println("Author: " + author);
        System.out.println("Edition: " + edition);
        System.out.println("Publisher: " + publisher);
    }
    

    
    
}

public class Library {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number of books to store:");
        int n = sc.nextInt();
        
        Book[] books = new Book[n];
        
        for (int i = 0; i < n; i++) {
            System.out.println("\nEnter details for Book " + (i + 1) + ":");
            System.out.println("Enter Accession Number:");
            int accessionNumber = sc.nextInt();
            sc.nextLine(); 
            
            System.out.println("Enter Book Title:");
            String title = sc.nextLine();
            
            System.out.println("Enter Author:");
            String author = sc.nextLine();
            
            System.out.println("Enter Edition:");
            String edition = sc.nextLine();
            
            System.out.println("Enter Publisher:");
            String publisher = sc.nextLine();

        books[i] = new Book(accessionNumber, title, author, edition, publisher);
        }
        
        System.out.println("\nEnter the Accession Number to search for:");
        int search = sc.nextInt();
        for (int i = 0; i < books.length; i++) {
            if (books[i].accessionNumber == search) {
                books[i].display();
            }
        }
        
        sc.close();
    }
}
