import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FILEPROGRAM {

    public static void main(String[] args) {

        try {
            FileWriter writer = new FileWriter("fP.txt",true);
            writer.write("THIS MY FIRST FILE PROGRAM YOU ARE READING FROM THE FILE CREATED ");
            writer.close();
            FileReader reader = new FileReader("fP.txt");
            BufferedReader br= new BufferedReader(reader);
            String line;
            System.out.println("Data read from the file");
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
            reader.close();

        } catch (IOException e) {
            System.out.println("-----eXCEPTION Error-----");
        }

    }

}