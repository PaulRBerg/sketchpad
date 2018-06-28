#include <iostream>

int ack(int m, int n) {
    std::cout << '('<< m << ", " << n << ")\n";
    if (m == 0) return n + 1;
    if (n == 0) return ack(m - 1, 1);
    return ack(m - 1, ack(m, n - 1));
}

void ack() {
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 6; ++j) {
            std::cout << "ack(" << i << ", " << j << "): " << ack(i, j) << "\n";
        }
    }
}