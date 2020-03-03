import java.io.IOException;
import java.util.Scanner;

public class Exercicio7 {
    static int max_iters = 100;
    static double eps = 1e-7;

    public static double eval(double x) {
        return x*x*x - x*x - 13*x + 8;
    }

    public static int sinal(double x) {
        if (x < 0) return -1;
        if (x > 0) return 1;
        return 0;
    }

    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);

        double l = in.nextDouble();
        double r = in.nextDouble();

        int num_iter = 0;
        while (num_iter <= max_iters) {
            double m = (l+r)/2;

            if (eval(m) == 0 || (r-l)/2 < eps) {
                l = m;
                break;
            }
            num_iter++;

            if (sinal(eval(m)) == sinal(eval(l))) {
                l = m;
            }
            else {
                r = m;
            }
        }

        if (num_iter > max_iters || Math.abs(eval(l)) >= eps) System.out.println("solucao nao encontrada no intervalo");
        else {
            System.out.printf("x = %f\n", l);
            System.out.printf("num_iters = %d\n", num_iter);
        }
    }
}
