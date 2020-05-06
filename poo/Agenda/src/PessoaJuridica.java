public class PessoaJuridica extends Pessoa {
    private String nome, cnpj, endereco, email, inscricao, razao_social;

    PessoaJuridica(String nome, String cnpj, String endereco, String email, String inscricao, String razao_social) {
        this.nome = nome;
        this.cnpj = cnpj;
        this.endereco = endereco;
        this.email = email;
        this.inscricao = inscricao;
        this.razao_social = razao_social;
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append(String.format("Nome : %s\n", this.nome));
        b.append(String.format("CNPJ : %s\n", this.cnpj));
        b.append(String.format("Endereco : %s\n", this.endereco));
        b.append(String.format("Email : %s\n", this.email));
        b.append(String.format("Inscricao estadual : %s\n", this.inscricao));
        b.append(String.format("Razao social : %s\n", this.razao_social));
        return b.toString();
    }

    @Override
    public int compareTo(Pessoa rhs) {
        if (rhs instanceof PessoaJuridica) {
            return cnpj.compareTo(((PessoaJuridica)rhs).cnpj);
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object o) {
        if (o instanceof PessoaJuridica) {
            return this.compareTo((PessoaJuridica) o) == 0;
        }
        return false;
    }
}
