import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	    Scanner in = new Scanner(System.in);
        Loja loja = new Loja();

        loja.add(new Livro("10", "aaa"), 10);
        loja.add(new CD("11", "bbb"), 5);
        loja.add(new DVD("12", "ccc"), 1);

        System.out.println(loja);
    }
}
