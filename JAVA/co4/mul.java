public class mul extends Thread {
	public void run() {
		for(int i=0;i<11;i++) {
			System.out.println("\n 5*"+i+"="+5*i);
		}
	}
}