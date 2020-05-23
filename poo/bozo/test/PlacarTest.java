import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class PlacarTest {
    Placar p;

    @Before
    public void setup() {
        p = new Placar();
    }

    @Test(expected = IllegalArgumentException.class)
    public void add1() {
        p.add(-1, new int[] {1, 1, 1, 1, 1});
    }

    @Test(expected = IllegalArgumentException.class)
    public void add2() {
        p.add(1, new int[] {1, 1, 1, 1, 1});
        p.add(1, new int[] {1, 1, 1, 1, 1});
    }

    @Test
    public void addFullHand() {
        p.add(7, new int[] {2, 3, 2, 3, 3});
        assertEquals(p.getScore(), 15);
    }

    @Test
    public void addNotFullHand() {
        p.add(7, new int[] {2, 4, 2, 3, 3});
        assertNotEquals(p.getScore(), 15);
    }

    @Test
    public void addSequencia() {
        p.add(8, new int[] {2, 3, 1, 4, 5});
        assertEquals(p.getScore(), 20);
    }

    @Test
    public void addNotSequencia() {
        p.add(8, new int[] {2, 4, 2, 3, 3});
        assertNotEquals(p.getScore(), 20);
    }

    @Test
    public void addQuadra() {
        p.add(9, new int[] {2, 3, 2, 2, 2});
        assertEquals(p.getScore(), 30);
    }

    @Test
    public void addNotQuadra() {
        p.add(9, new int[] {2, 4, 2, 3, 3});
        assertNotEquals(p.getScore(), 30);
    }

    @Test
    public void addQuina() {
        p.add(10, new int[] {2, 2, 2, 2, 2});
        assertEquals(p.getScore(), 40);
    }

    @Test
    public void addNotQuina() {
        p.add(10, new int[] {2, 4, 2, 3, 3});
        assertNotEquals(p.getScore(), 40);
    }

    @Test
    public void getScore() {
        String correct =
                "   3    |   15   |   4    \n" +
                "--------------------------\n" +
                "   0    |   0    |   10   \n" +
                "--------------------------\n" +
                "   (3)  |   (9)  |   12   \n" +
                "--------------------------\n" +
                "        |   0    |\n" +
                "        +--------+";

        p.add(1, new int[] {1, 1, 1, 2, 3});
        p.add(2, new int[] {6, 6, 1, 6, 3});
        p.add(4, new int[] {4, 1, 1, 2, 3});
        p.add(5, new int[] {5, 5, 2, 2, 3});
        p.add(6, new int[] {1, 1, 6, 2, 6});
        p.add(7, new int[] {1, 1, 1, 2, 2});
        p.add(8, new int[] {1, 1, 1, 1, 3});
        p.add(10, new int[] {1, 1, 1, 2, 3});

        assertEquals(p.toString(), correct);
    }
}