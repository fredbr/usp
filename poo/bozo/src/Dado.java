import java.lang.reflect.Array;

public class Dado {
    private int num_lados;
    private int resposta;

    private static Random r = new Random();

    public Dado() {
        num_lados = 6;
        resposta = 1;
    }

    public Dado(int n) {
        num_lados = n;
        resposta = 1;
    }

    public int getLado() {
        return resposta;
    }

    public int rolar() {
        resposta = r.getIntRand(num_lados) + 1;
        return resposta;
    }

    @Override
    public String toString() {
        // StringBuilder para evitar a construcao de string desnecessarias
        StringBuilder res = new StringBuilder();
        res.append("+-----+\n");
        if (resposta == 1) {
            res.append("|     |\n");
            res.append("|  *  |\n");
            res.append("|     |\n");
        }
        else if (resposta == 2) {
            res.append("|   * |\n");
            res.append("|     |\n");
            res.append("| *   |\n");
        }
        else if (resposta == 3) {
            res.append("|   * |\n");
            res.append("|  *  |\n");
            res.append("| *   |\n");
        }
        else if (resposta == 4) {
            res.append("| * * |\n");
            res.append("|     |\n");
            res.append("| * * |\n");
        }
        else if (resposta == 5) {
            res.append("| * * |\n");
            res.append("|  *  |\n");
            res.append("| * * |\n");
        }
        else if (resposta == 6) {
            res.append("| * * |\n");
            res.append("| * * |\n");
            res.append("| * * |\n");
        }
        res.append("+-----+\n");
        return res.toString();
    }

}
