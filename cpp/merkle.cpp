#include <cstring>
#include <cmath>
#include "libs/picosha2.h"

std::string GenRandom(size_t length)
{
    auto randchar = []() -> char
    {
        const char charset[] =
                "0123456789"
                        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        "abcdefghijklmnopqrstuvwxyz";
        const size_t max_index = (sizeof(charset) - 1);
        return charset[ rand() % max_index ];
    };
    std::string str(length,0);
    std::generate_n( str.begin(), length, randchar );
    return str;
}

void GenMerkle(short length = 3)
{
    std::string tree[100][100];

    auto dimen = (int) pow(2, length);
    for (int i = 0; i < dimen; ++i) {
        tree[0][i] = GenRandom(32);
    }

    int aux = dimen / 2;
    for (int i = 1; i <= length; ++i, aux /= 2) {
        for (int j = 0; j < aux; ++j) {
            tree[i][j] =  picosha2::hash256_hex_string(tree[i-1][j*2] + tree[i-1][j*2+1]);
        }
    }

    int i = 0, j = 0;
    for (i; i < dimen; ++i, j = 0) {
        while (!tree[i][j].empty()) {
            std::cout << "(" << i << "," << j << "): " << tree[i][j++] << "\n";
        }
        std::cout << "\n";
    }
}

//    std::cout << "Test:" << picosha2::hash256_hex_string(keys[0]);

//    for (int i = 0; i < length; ++i) {
//        for (int j = 0; j < length; ++j) {
//            tree[i * length + j] =
//        }
//    }

//    std::cout << "Here's the Merkle Tree" << "\n";