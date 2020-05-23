import org.junit.Test;

import static org.junit.Assert.*;

public class RandomTest {
    @Test
    public void seedInit() {
        Random r = new Random(0);
        double d = r.getRand();
        assertEquals(d, 0.2113248654641211, 0.000000001);
    }
}