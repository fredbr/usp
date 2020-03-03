import java.io.IOException;
import java.util.Scanner;

public class Exercicio1 {

    static double eps = 0.00000001;

    public static void main(String[] args) throws IOException {
	    Scanner in = new Scanner(System.in);
	    double x = in.nextDouble();

	    double nx = x/2;
	    double nx2 = 0;

	    while (true) {
	        nx2 = (nx + x/nx)/2;
	        if (Math.abs(nx - nx2) <= eps) break;
	        nx = nx2;
        }

	    System.out.print(nx2);
    }
}
