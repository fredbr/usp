import java.util.Calendar;

public class Random {
    private static final long a = 453816693;
    private static final long m = 843314861;
    private static final long p = 2147483648l;

    private long x;

    public Random(int k) {
        x = k;
    }

    public Random() {
        Calendar c = Calendar.getInstance();
        x = c.getTimeInMillis() % p;
    }

    public double getRand() {
        x = (a + m * x) % p;
        return (double) x / p;
    }

    public int getIntRand(int max) {
        double t = getRand();
        return (int)(max * t);
    }
}
