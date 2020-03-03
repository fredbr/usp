import java.io.IOException;
import java.util.Scanner;

public class Exercicio5 {
    public static boolean is_prime(int n) {
        for (int i = 2; i*i <= n; i++) {
            if (n%i == 0) return false;
        }
        return true;
    }

    public static int less_prime(int n) {
        for (int i = n; i >= 0; i--) {
            if (is_prime(i)) return i;
        }
        return 0;
    }
    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();

        System.out.println(less_prime(n));
    }
}
