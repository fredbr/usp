public class Figura {
    private boolean filled;
    private String cor;

    Figura(boolean filled, String cor) {
        this.filled = filled;
        this.cor = cor;
    }

    public boolean isFilled() {
        return this.filled;
    }

    public String cor() {
        return this.cor;
    }

    public double area() {
        return 0;
    }

    public double perimetro() {
        return 0;
    }

    @Override
    public String toString() {
        return String.format("tipo : %s\ncor : %s\nfilled: %b\narea : %f\nperimetro: %f\n",
                this.getClass().getName(), this.cor(), this.isFilled(), this.area(), this.perimetro());
    }

}
