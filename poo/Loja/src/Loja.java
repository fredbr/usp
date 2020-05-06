import java.util.ArrayList;

public class Loja {
    private class NumProduto {
        public Produto produto;
        public int qtd;

        public NumProduto(Produto p, int qtd) {
            this.produto = p;
            this.qtd = qtd;
        }

        public boolean compareName(String name) {
            return produto.compareName(name);
        }

        public boolean compareCodigo(String codigo) {
            return produto.compareCodigo(codigo);
        }

        public void addQtd(int qtd) {
            this.qtd += qtd;
        }
    }

    private ArrayList<NumProduto> loja;

    public Loja() {
        loja = new ArrayList<>();
    }

    private NumProduto findProduto(String codigo) {
        for (NumProduto p : loja) {
            if (p.compareCodigo(codigo)) {
                return p;
            }
        }
        return null;
    }

    public void add(Produto p, int qtd) {
        NumProduto f = findProduto(p.getCodigo());

        if (f == null) {
            loja.add(new NumProduto(p, qtd));
        }
        else {
            f.addQtd(qtd);
        }
    }

    public Produto getProdutoCodigo(String codigo) {
        NumProduto p = findProduto(codigo);
        if (p == null) {
            throw new IllegalArgumentException("Produto nao encontrado");
        }
        return p.produto;
    }

    public Produto getProdutoNome(String nome) {
        for (NumProduto p : loja) {
            if (p.produto.compareName(nome)) {
                return p.produto;
            }
        }

        throw new IllegalArgumentException("Produto nao encontrado");
    }

    @Override
    public String toString() {
        int i = 0;
        StringBuilder b = new StringBuilder();
        for (NumProduto p : loja) {
            b.append(String.format("Produto %d\n", i));
            b.append(String.format("%d unidade(s)\n", p.qtd));
            b.append(p.produto.toString());
            b.append("\n");
            i++;
        }
        return b.toString();
    }
}
