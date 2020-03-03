import java.io.IOException;
import java.util.Scanner;

public class Exercicio4 {
    public static int is_prime(int x) {
        for (int i = 2; i*i <= x; i++) {
            if (x%i == 0) return i;
        }
        return -1;
    }

    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();

        int x = is_prime(n);

        if (x != -1) System.out.println(x);
    }
}
