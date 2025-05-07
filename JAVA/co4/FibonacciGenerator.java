public class FibonacciGenerator implements Runnable {
    private int n;

    public FibonacciGenerator(int n) {
        this.n = n;
    }

    @Override
    public void run() {
        int a = 0, b = 1;
        
       System.out.println("fibonacci =" +a);
System.out.println("fibonacci =" +b);

        for (int i = 2; i < n; i++) {
            int c = a + b;
              System.out.println("fibonnoci = "+c);
            a = b;
            b = c;
        }
    }
}
