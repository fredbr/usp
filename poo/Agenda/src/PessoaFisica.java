public class PessoaFisica extends Pessoa {
    private String nome, cpf, endereco, nascimento, email, estado_civil;

    PessoaFisica(String nome, String cpf, String endereco, String nascimento, String email, String estado_civil) {
        this.nome = nome;
        this.cpf = cpf;
        this.endereco = endereco;
        this.nascimento = nascimento;
        this.email = email;
        this.estado_civil = estado_civil;
    }

    @Override
    public String toString() {
        StringBuilder b = new StringBuilder();
        b.append(String.format("Nome : %s\n", this.nome));
        b.append(String.format("CPF : %s\n", this.cpf));
        b.append(String.format("Endereco : %s\n", this.endereco));
        b.append(String.format("Data de Nascimento : %s\n", this.nascimento));
        b.append(String.format("Email : %s\n", this.email));
        b.append(String.format("Estado civil : %s\n", this.estado_civil));
        return b.toString();
    }

    @Override
    public int compareTo(Pessoa rhs) {
        if (rhs instanceof PessoaFisica) {
            return cpf.compareTo(((PessoaFisica)rhs).cpf);
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object o) {
        if (o instanceof PessoaFisica) {
            return this.compareTo((PessoaFisica) o) == 0;
        }
        return false;
    }
}
