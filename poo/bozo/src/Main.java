import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {
	    EntradaTeclado in = new EntradaTeclado();

	    RolaDados dados = new RolaDados(5);
	    Placar placar = new Placar();

	    for (int rodada = 0; rodada < 10; rodada++) {
	    	System.out.print("Pressione [ENTER] para comecar a rodada\n");
	    	String tmp = in.leString();

	    	int[] valores = dados.rolar();
	    	
	    	System.out.print(dados.toString());

	    	for (int tentativa = 1; tentativa >= 0; tentativa--) {
	    		System.out.printf("Escolha os dados para rolar de novo (%d tentativas sobrando):", tentativa);
	    		String s = in.leString();

	    		valores = dados.rolar(s);
	    		System.out.printf("%s\n\n", dados.toString());
			}

	    	System.out.print("Placar atual:\n");
	    	System.out.printf("%s\n\n", placar.toString());

	    	System.out.print("Escolha a posicao do placar para ocupar:\n");
	    	int pos = in.leInt();
	    	placar.add(pos, valores);

	    	System.out.print("Placar atualizado:\n");
	    	System.out.printf("%s\n\n", placar.toString());
		}

	    System.out.print("Fim do jogo!\n");
	    System.out.printf("Pontuacao ; %d pontos\n", placar.getScore());

    }
}
