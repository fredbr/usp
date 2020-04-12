public class Placar {
    private int[] p;
    private boolean[] ocupado;

    public Placar() {
        p = new int[10];
        ocupado = new boolean[10];
    }

    public void add(int posicao, int[] dados) throws IllegalArgumentException {
        if (posicao <= 0 || posicao > 10) {
            throw new IllegalArgumentException();
        }

        if (ocupado[posicao-1]) {
            throw new IllegalArgumentException();
        }

        if (posicao <= 6) {
            int sum = 0;
            for (int i = 0; i < dados.length; i++) {
                if (dados[i] == posicao) sum += posicao;
            }
            p[posicao-1] = sum;
        }
        else {
            int[] cnt = new int[7];
            for (int i = 0; i < dados.length; i++) {
                cnt[dados[i]]++;
            }
            // full hand
            if (posicao == 7) {
                boolean has2 = false, has3 = false;
                for (int i = 1; i <= 6; i++) {
                    if (cnt[i] == 2) has2 = true;
                    if (cnt[i] == 3) has3 = true;
                }

                if (has2 && has3) {
                    p[posicao-1] = 15;
                }
                else {
                    p[posicao-1] = 0;
                }
            }
            // sequencia
            else if (posicao == 8) {
                int cnt1 = 0;
                for (int i = 1; i <= 6; i++) {
                    if (cnt[i] == 1) cnt1++;
                }

                if (cnt1 == 5 && (cnt[1] == 0 || cnt[6] == 0)) {
                    p[posicao-1] = 20;
                }
                else {
                    p[posicao-1] = 0;
                }
            }
            // quadra
            else if (posicao == 9) {
                boolean has4 = false;
                for (int i = 1; i <= 6; i++) {
                    if (cnt[i] == 4) has4 = true;
                }
                if (has4) {
                    p[posicao-1] = 30;
                }
                else {
                    p[posicao-1] = 0;
                }
            }
            // quina
            else {
                boolean has5 = false;
                for (int i = 1; i <= 6; i++) {
                    if (cnt[i] == 5) has5 = true;
                }
                if (has5) {
                    p[posicao-1] = 40;
                }
                else {
                    p[posicao-1] = 0;
                }
            }
        }

        ocupado[posicao-1] = true;
    }

    public int getScore() {
        int score = 0;
        for (int i = 0; i < 10; i++) {
            score += getScorePosicao(i+1);
        }
        return score;
    }

    private int getScorePosicao(int posicao) {
        if (!ocupado[posicao-1]) {
            return 0;
        }
        return p[posicao-1];
    }

    private String stringPosicao(int posicao) {
    	// StringBuilder para evitar a construcao de strings desnecessarias
        StringBuilder build = new StringBuilder();

        if (!ocupado[posicao-1]) {
            build.append(String.format("(%d)", posicao));
        }
        else {
            build.append(String.format("%d", getScorePosicao(posicao)));
        }

        return build.toString();
    }

    @Override
    public String toString() {
    	// StringBuilder para evitar a construcao de strings desnecessarias
        StringBuilder build = new StringBuilder();
        build.append(String.format("   %-5s|", stringPosicao(1)));
        build.append(String.format("   %-5s|", stringPosicao(7)));
        build.append(String.format("   %-5s\n", stringPosicao(4)));
        build.append(String.format("--------------------------\n"));
        build.append(String.format("   %-5s|", stringPosicao(2)));
        build.append(String.format("   %-5s|", stringPosicao(8)));
        build.append(String.format("   %-5s\n", stringPosicao(5)));
        build.append(String.format("--------------------------\n"));
        build.append(String.format("   %-5s|", stringPosicao(3)));
        build.append(String.format("   %-5s|", stringPosicao(9)));
        build.append(String.format("   %-5s\n", stringPosicao(6)));
        build.append(String.format("--------------------------\n"));
        build.append(String.format("        |   %-5s|\n", stringPosicao(10)));
        build.append(String.format("        +--------+"));

        return build.toString();
    }

}
