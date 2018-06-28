#include <iostream>
#include <cmath>

float ConvertBitsToTarget(unsigned int bits) {
    // Doesn't work
    return 0.0;
    // return (bits >> 2) * pow(2, 8 * (bits % 1000000 - 3));
}

inline float FastLog(float val)
{
    int * const exp_ptr = reinterpret_cast <int *>(&val);
    int x = *exp_ptr;
    const int log_2 = ((x >> 23) & 255) - 128;
    x &= ~(255 << 23);
    x += 127 << 23;
    *exp_ptr = x;

    val = ((-1.0f/3) * val + 2) * val - 2.0f/3;
    return ((val + log_2) * 0.69314718f);
}

float ComputeDifficulty(unsigned int bits)
{
    static double max_body = FastLog(0x00ffff), scaland = FastLog(256);
    return exp(max_body - FastLog(bits & 0x00ffffff) + scaland * (0x1d - ((bits & 0xff000000) >> 24)));
}