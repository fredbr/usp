import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class RolaDadosTest {
    private static RolaDados r, r1;

    @Before
    public void setUp() throws Exception {
        r = new RolaDados(5);
        r1 = new RolaDados(1);
    }

    @Test
    public void rolar() {
        int[] v = r.rolar();

        for (int i : v) {
            assertTrue(i >= 1 && i <= 6);
        }
    }

    @Test
    public void rolarNone() {
        int[] r1 = r.rolar();
        int[] r2 = r.rolar(new boolean[] {false, false, false, false, false});

        assertArrayEquals(r1, r2);
    }

    @Test
    public void rolarNormal() {
        int[] v = r.rolar(new boolean[] {false, true, false, true, true});

        for (int i : v) {
            assertTrue(i >= 1 && i <= 6);
        }
    }

    @Test
    public void testRolarString1() {
        int[] v1 = r.rolar();
        int[] v2 = r.rolar(" ");

        assertArrayEquals(v1, v2);
    }

    @Test
    public void testRolarString2() {
        int[] v1 = r.rolar();
        int[] v2 = r.rolar(" 0 10 9 6");

        assertArrayEquals(v1, v2);
    }

    @Test
    public void testRolarString3() {
        int[] v = r.rolar("1 2 3 4 5 5");

        for (int i : v) {
            assertTrue(i >= 1 && i <= 6);
        }
    }

    @Test
    public void testToString() {
        String[] correct = {
                "   1   \n+-----+\n|     |\n|  *  |\n|     |\n+-----+\n",
                "   1   \n+-----+\n|   * |\n|     |\n| *   |\n+-----+\n",
                "   1   \n+-----+\n|   * |\n|  *  |\n| *   |\n+-----+\n",
                "   1   \n+-----+\n| * * |\n|     |\n| * * |\n+-----+\n",
                "   1   \n+-----+\n| * * |\n|  *  |\n| * * |\n+-----+\n",
                "   1   \n+-----+\n| * * |\n| * * |\n| * * |\n+-----+\n"
        };

        int[] v= r1.rolar();
        String s = r1.toString();

        assertEquals(correct[v[0]-1], s);
    }

    @Test
    public void testToString2() {
        String s = r.toString();
        for (int i = 0; i < 5; i++) {
            assertEquals(s.charAt(3 + 11*i), '1'+i);
        }
    }
}