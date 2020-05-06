public class Main {

    public static void main(String[] args) {
        Figura v[] = {
                new Circulo(false, "azul", 3.5),
                new Retangulo(true, "amarelo", 4, 8),
                new Quadrado(true, "vermelho", 5)
        };

        for (Figura f : v) {
            System.out.println(f);
        }
    }
}
