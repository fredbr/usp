import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        Agenda agenda = new Agenda();

        while (true) {
            System.out.print("Digite a operacao que deseja realizar:\n");
            System.out.print("1 - Adicionar:\n");
            System.out.print("2 - Remover:\n");
            System.out.print("3 - Imprimir agenda\n");
            System.out.print("4 - Ordenar agenda\n");

            int op = in.nextInt();

            if (op == 3) {
                System.out.print(agenda);
            }
            else if (op >= 1 && op <= 2){
                System.out.print("Deseja realizar a operacao com que tipo de pessoa?\n");
                System.out.print("1 - Pessoa Fisica\n");
                System.out.print("2 - Pessoa Juridica\n");

                int tipo = in.nextInt();

                Pessoa p;
                if (tipo == 1) {
                    System.out.print("Digite nome, CPF, endereco, nascimento, email e estado civil:\n");
                    String nome = in.next();
                    String cpf = in.next();
                    String endereco = in.next();
                    String nascimento = in.next();
                    String email = in.next();
                    String estado = in.next();

                    p = new PessoaFisica(nome, cpf, endereco, nascimento, email, estado);
                }
                else {
                    System.out.print("Digite nome, CNPJ, endereco, email, inscricao e razao social:\n");
                    String nome = in.next();
                    String cnpj = in.next();
                    String endereco = in.next();
                    String email = in.next();
                    String inscricao = in.next();
                    String razao = in.next();

                    p = new PessoaJuridica(nome, cnpj, endereco, email, inscricao, razao);
                }

                if (op == 1) {
                    agenda.add(p);
                }
                else {
                    try {
                        agenda.remove(p);
                    }
                    catch (IllegalArgumentException e) {
                        System.out.print("Nao encontrado!\n");
                    }
                }
            }
            else if (op == 4) {
                agenda.sort();
            }
        }
    }
}
