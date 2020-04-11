import java.lang.reflect.Array;
import java.util.Arrays;

public class RolaDados {
    private Dado[] v;

    public RolaDados(int n) {
        v = new Dado[n];
        for (int i = 0; i < v.length; i++) {
            v[i] = new Dado();
        }
    }

    public int[] rolar() {
        int[] res = new int[v.length];

        for (int i = 0; i < v.length; i++) {
            res[i] = v[i].rolar();
        }

        return res;
    }

    public int[] rolar(boolean[] quais) {
        int[] res = new int[v.length];

        for (int i = 0; i < v.length; i++) {
            if (quais[i]) {
                res[i] = v[i].rolar();
            }
            else {
                res[i] = v[i].getLado();
            }
        }

        return res;
    }

    public int[] rolar(String s) {
        String[] pos = s.split(" ");
        boolean[] mrk = new boolean[v.length];

        for (int i = 0; i < pos.length; i++) {
            if (pos[i].isEmpty()) continue;

            int k = Integer.parseInt(pos[i]);

            if (k < 1 || k > v.length) continue;

            mrk[k-1] = true;
        }

        return rolar(mrk);
    }

    @Override
    public String toString() {
        String b = "\n\n\n\n\n\n";

        for (int i = 0; i < v.length; i++) {
            String dado = String.format("   %d   \n", i+1);
            dado = dado.concat(v[i].toString());

            b = concatenateDado(b, dado);
        }

        return b;
    }

    // junta duas strings horizontalmente
    private String concatenateDado(String a, String b) {
        String[] lr = a.split("\n");
        String[] rr = b.split("\n");

        StringBuilder r = new StringBuilder();

        for (int i = 0; i < Integer.max(lr.length, rr.length); i++) {
            if (i < lr.length) {
                r.append(lr[i]);
                r.append("    ");
            }
            r.append(rr[i]);
            r.append("\n");
        }
        return r.toString();
    }
}
