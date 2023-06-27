from fpga import api
import time
import numpy as np

class quickMafths(api): 
    def __init__(self, bitfile):
        # program bitfile
        super(quickMafths, self).__init__(bitfile)


if __name__ == '__main__':

    dev = quickMafths('Top622.bit')

    # reset
    dev.wire_in(0x00, 1)
    time.sleep(0.1)

    # not reset
    dev.wire_in(0x00, 0)
    
    # set wire on
    dev.wire_in(0x01, 1)

    # prep input
    a = [0x0,0x0,0x0,0xf,0xf,0xf,0xf,0xf,0x0,0x0,0x0,0xe,0xe,0xe,0xe,0xe,0x0,0x0,0x0,0xd,0xd,0xd,0xd,0xd,0x0,0x0,0x0,0xc,0xc,0xc,0xc,0xc]
    b = bytearray(a)
    print("In: ", b)
    dev.write(0x80, b)
        
    # wait
    time.sleep(0.25)

    # wait
    time.sleep(0.5)

    # wait
    time.sleep(1)
    # set wire off
    dev.wire_in(0x01, 0)
    

    # get output
    c = bytearray(256* 10)
    dev.read(0xA0, c)
    print("length: ", len(c))
    print("output: ", c)

    print("\n\n")





