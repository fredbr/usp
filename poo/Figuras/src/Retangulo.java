public class Retangulo extends Figura {
    private double x, y;

    public Retangulo(boolean filled, String cor, double x, double y) {
        super(filled, cor);
        this.x = x;
        this.y = y;
    }

    @Override
    public double area() {
        return x*y;
    }

    @Override
    public double perimetro() {
        return 2.0 * (x + y);
    }
}
