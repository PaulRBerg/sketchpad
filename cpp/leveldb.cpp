
#include "leveldb/db.h"

void TestLevelDb() {
    std::cout << "Cmon, it should work..." << std::endl;
    std::cout << "leveldb::kNoCompression:" << leveldb::kNoCompression << std::endl;
    std::cout << "leveldb::kSnappyCompression:" << leveldb::kSnappyCompression << std::endl;
}