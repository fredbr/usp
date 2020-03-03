import java.io.IOException;
import java.util.Scanner;

public class Exercicio6 {
    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);

        double min = Double.MAX_VALUE, max = -Double.MAX_VALUE;
        while (true) {
            double x = in.nextDouble();

            min = Math.min(min, x);
            max = Math.max(max, x);

            if (x == 0) break;
        }
        System.out.printf("%f %f\n", min, max);
    }
}
