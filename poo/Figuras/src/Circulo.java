public class Circulo extends Figura {
    private double r;

    public Circulo(boolean filled, String cor, double raio) {
        super(filled, cor);
        this.r = raio;
    }

    @Override
    public double area() {
        return Math.PI*r*r;
    }

    @Override
    public double perimetro() {
        return 2.0 * Math.PI * r;
    }
}
