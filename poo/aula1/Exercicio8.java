import java.io.IOException;
import java.util.Scanner;

public class Exercicio8 {
    static double eps = 1e-7;

    static double eval(double x) {
        return x*x*x - x*x - 13*x + 8;
    }

    static double eval2(double x) {
        return 3*x*x - 2*x - 13;
    }

    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);

        double x = in.nextDouble();
        double lx = 0;

        int num_iter = 0;
        do {
            lx = x;

            if (eval2(x) == 0) {
                // derivada igual a 0
                System.out.printf("solucao nao encontrada\n");
                return;
            }

            x = lx - eval(lx)/eval2(lx);
            num_iter++;
        } while (Math.abs(lx - x) >= eps);

        System.out.printf("x = %f\n", x);
        System.out.printf("numero de iteracoes = %d\n", num_iter);
    }
}
