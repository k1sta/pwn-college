#!/run/workspace/bin/python3
from pwn import *

def encode_from_hex(input):
    return bin(int.from_bytes(input, byteorder="big"))[2:] 

correct_password = b"\x8a\xed\xec\xc4\xed\x95\xf7\xb8"

p = process("/challenge/runme")

p.recvline()
p.send(encode_from_hex(correct_password))

while True:
    try:
        print(p.recvline())
    except EOFError:
        print("End of output")
        break

