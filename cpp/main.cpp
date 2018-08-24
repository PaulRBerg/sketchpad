#include <iostream>
#include "ackermann.cpp"
#include "bitcoin.cpp"
#include "bits.cpp"
#include "euclid.cpp"
#include "leveldb.cpp"
#include "merkle.cpp"
#include "rsa.cpp"

void NiHao();

int main (int argc, const char * argv[]) {

//    NiHao();

//  std::cout << ComputeDifficulty(0x1b0404cb) << std::endl;
//  std::cout << ConvertBitsToTarget(0x1b0404cb) << std::endl;

//    GenMerkle();

//    GenRSA();

//    Euclid();

    TestLevelDb();

    return 0;
}

void NiHao() {
    std::cout << "你好!" << std::endl;
    std::cout << __cplusplus << std::endl;
}