#include <cmath>
#include <iomanip>
#include <cstdio>

inline double f(double x, double p, double q, double r, double s, double t, double u) {
    return p*exp(-x) + q*sin(x) + r*cos(x) + s*tan(x) + t*x*x + u;
}


double solve(double p, double q, double r, double s, double t, double u) {
    double a = 0.0, b = 1.0;

    while (b-a > 5e-9) {
        double m = (a+b)/2;

        double y = f(m, p, q, r, s, t, u);

        if (y > 0) a = m;
        else b = m;
    }

    return (a+b)/2.0;
}

int main() {
    double p, q, r, s, t, u;

    while (std::scanf("%lf %lf %lf %lf %lf %lf", &p, &q, &r, &s, &t, &u) != EOF) {
        double x = solve(p, q, r, s, t, u);

        if (x < 0 or x > 1 or std::abs(f(x, p, q, r, s, t, u)) >= 1e-4) {
            std::printf("No solution\n");
        }
        else {
            std::printf("%.4lf\n", x);
        }
    }
}