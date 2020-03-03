import java.io.IOException;
import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) throws IOException {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();

        for (int i = n-1; i >= 0; i--) {
            for (int j = 0; j < n-i-1; j++) {
                System.out.print(' ');
            }
            for (int j = n-i-1; j < n; j++) {
                System.out.print('*');
            }
            System.out.println();
        }
    }
}
