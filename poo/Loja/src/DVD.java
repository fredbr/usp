public class DVD extends Produto {
    public DVD(String codigo, String nome) {
        super(codigo, nome);
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append("DVD\n");
        b.append(super.toString());
        return b.toString();
    }
}
