
int Euclid (int a = 105, int b = 10) {
    if (a < b) {
        int c = a;
        a = b;
        b = c;
    }

    while (b) {
        int r = a % b;
        a = b;
        b = r;
    }

    std::cout << "gcd of a and b is: " << a << std::endl;

    return b;
}

int ExtendedEuclid(int a = 105, int b = 10) {
    int gcd = Euclid(a, b);
    return gcd;
}