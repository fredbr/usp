public class Produto {
    private String codigo;
    private String nome;

    public Produto(String codigo, String nome) {
        this.codigo = codigo;
        this.nome = nome;
    }

    public boolean compareName(String nome) {
        return this.nome.equals(nome);
    }

    public boolean compareCodigo(String codigo) {
        return this.codigo.equals(codigo);
    }

    public String getCodigo() {
        return this.codigo;
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append(String.format("Nome: %s\n", this.nome));
        b.append(String.format("Codigo: %s\n", this.codigo));
        return b.toString();
    }
}
