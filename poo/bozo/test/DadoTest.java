import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class DadoTest {
    private Dado d, d2;

    @Before
    public void setUp() throws Exception {
        d = new Dado();
        d2 = new Dado(6);
    }

    @Test
    public void getLado() {
        for (int i = 0; i < 100; i++) {
            int x = d.getLado();
            assertTrue(x >= 1 && x <= 6);
            d.rolar();
        }
    }

    @Test
    public void rolar() {
        for (int i = 0; i < 100; i++) {
            int x = d.rolar();
            assertTrue(x >= 1 && x <= 6);
        }

    }

    @Test
    public void testToString() {
        String[] correct = {
                "+-----+\n|     |\n|  *  |\n|     |\n+-----+\n",
                "+-----+\n|   * |\n|     |\n| *   |\n+-----+\n",
                "+-----+\n|   * |\n|  *  |\n| *   |\n+-----+\n",
                "+-----+\n| * * |\n|     |\n| * * |\n+-----+\n",
                "+-----+\n| * * |\n|  *  |\n| * * |\n+-----+\n",
                "+-----+\n| * * |\n| * * |\n| * * |\n+-----+\n"
        };

        for (int i = 0; i < 100; i++) {
            int x = d.rolar();
            String s = d.toString();

            assertEquals(s, correct[x-1]);
        }
    }
}