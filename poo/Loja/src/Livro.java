public class Livro extends Produto {
    public Livro(String codigo, String nome) {
        super(codigo, nome);
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append("Livro\n");
        b.append(super.toString());
        return b.toString();
    }
}
