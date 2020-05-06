public class CD extends Produto {
    public CD(String codigo, String nome) {
        super(codigo, nome);
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append("CD\n");
        b.append(super.toString());
        return b.toString();
    }
}
