#!/usr/bin/python3

import sys
from pwn import *

def decode_from_bits(s):
    s = s.decode("latin1")
    assert set(s) <= {"0", "1"}, "non-binary characters found in bitstream!"
    assert len(s) % 8 == 0, "must enter data in complete bytes (each byte is 8 bits)"
    return int.to_bytes(int(s, 2), length=len(s) // 8, byteorder="big")

correct_password = b"1001011010001010111101011000001010111010101001101101101011101101"
correct_password = decode_from_bits(correct_password)

p = process("/challenge/runme")

p.recvline()
p.send(correct_password)

while True:
    try:
        output = p.recvline(timeout=3)
        print(output)
    except EOFError:
        print("End of output")
        break
