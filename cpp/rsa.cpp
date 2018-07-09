
unsigned GenPhi(unsigned p, unsigned q) {
    return 29;
}

void PrintChars(std::string str) {
    for (unsigned i = 0; i < str.length(); ++i) {
        std::cout << (unsigned) str.at(i) << std::endl;
    }
}

void GenRSA(std::string message = "PAUL", unsigned p = 7, unsigned q = 13, unsigned e = 5) {
    std::cout << "p: " << p << std::endl;
    std::cout << "q: " << q << std::endl;
    std::cout << "e: " << e << std::endl;
    std::cout << "message: " << message << std::endl << std::endl;

    unsigned N = p * q;
    unsigned d = GenPhi(p, q);

    std::cout << "initial string is: \t\t\"" << message << "\"" << std::endl;

    PrintChars(message);

    std::string encrypted;
    for (unsigned i = 0; i < message.length(); ++i) {
        const int no = message.at(i);
        int encrypted_no = no;
        for (unsigned j = 0; j < e - 1; ++j) {
            encrypted_no = (encrypted_no * no) % N;
        }
        encrypted += encrypted_no;
    }

    std::cout << std::endl;
    std::cout << "encrypted string is: \t\"" << encrypted << "\"" << std::endl;
    PrintChars(encrypted);

    std::string decrypted;
    for (unsigned i = 0; i < encrypted.length(); ++i) {
        const int no = encrypted.at(i);
        int dencrypted_no = no;
        for (unsigned j = 0; j < d - 1; ++j) {
            dencrypted_no *= no;
            dencrypted_no %= N;
        }
        decrypted += dencrypted_no;
    }
    std::cout << std::endl;

    std::cout << "decrypted string is: \t\"" << decrypted << "\"" << std::endl;
    PrintChars(decrypted);
}