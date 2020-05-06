import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;

public class Agenda {
    private ArrayList<Pessoa> agenda;

    public Agenda() {
        this.agenda = new ArrayList<>();
    }

    public void add(Pessoa p) {
        agenda.add(p);
    }

    public void remove(Pessoa p) {
        int idx = -1, at = 0;
        for (Pessoa x : agenda) {
            if (x.equals(p)) {
                idx = at;
                break;
            }
            at++;
        }
        if (idx == -1) {
            throw new IllegalArgumentException("Pessoa nao encontrada");
        }
        agenda.remove(p);
    }

    @Override
    public String toString() {
        StringBuilder s = new StringBuilder();
        for (Pessoa p : agenda) {
            s.append(p.toString());
            s.append("\n");
        }
        return s.toString();
    }

    class ComparePessoa implements Comparator<Pessoa> {
        @Override
        public int compare(Pessoa a, Pessoa b) {
            if (a instanceof PessoaFisica && b instanceof PessoaJuridica) {
                return -1;
            }
            if (a instanceof PessoaJuridica && b instanceof PessoaFisica) {
                return 1;
            }
            return a.compareTo(b);
        }
    }

    public void sort() {
        Collections.sort(agenda, new ComparePessoa());
    }
}
