import java.applet.Applet;
import java.awt.*;

public class DrawingApplet extends Applet {
    
    public void paint(Graphics g) { // The paint method is where drawing takes place
        // Draw a circle
        g.setColor(Color.RED); // Set the color to red
        g.fillOval(50, 50, 100, 100); // Fill an oval (circle) with the specified dimensions
        
        // Draw a rectangle
        g.setColor(Color.BLUE); // Set the color to blue
        g.fillRect(200, 50, 100, 100); // Fill a rectangle with the specified dimensions
        
        // Draw a line
        g.setColor(Color.GREEN); // Set the color to green
        g.drawLine(400, 100, 500, 200); // Draw a line from (400,100) to (500,200)
    }
}
