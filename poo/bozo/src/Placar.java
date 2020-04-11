public class Placar {
    private int[][] p;
    private boolean[] ocupado;

    public Placar() {
        p = new int[10][5];
        ocupado = new boolean[10];
    }

    public void add(int posicao, int[] dados) throws IllegalArgumentException {
        if (posicao < 0 || posicao > 10) {
            throw new IllegalArgumentException();
        }

        if (ocupado[posicao-1]) {
            throw new IllegalArgumentException();
        }

        ocupado[posicao-1] = true;
        p[posicao-1] = dados;
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

        int score = 0;
        for (int i = 0; i < 5; i++) {
            score += p[posicao-1][i];
        }

        return score;
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
