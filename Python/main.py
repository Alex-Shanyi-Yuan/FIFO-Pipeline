from fpga import api
import time

class quickMafths(api): 
    def __init__(self, bitfile):
        # program bitfile
        super(quickMafths, self).__init__(bitfile)


if __name__ == '__main__':

    dev = quickMafths('test.bit')

    # reset
    dev.wire_in(0x00, 1)
    time.sleep(0.1)

    # not reset
    dev.wire_in(0x00, 0)

    # prep input
    for i in range(8):
        a = list(range(i*32, (i+1)*32))
        b = bytearray(a)
        print("In: ", b)
        dev.write(0x80, b)
        
        # wait
        time.sleep(0.25)

    # wait
    time.sleep(0.5)

    # set wire on
    dev.wire_in(0x01, 1)
    # wait
    time.sleep(0.1)
    # set wire off
    dev.wire_in(0x01, 0)


    # get output
    c = bytearray(16)
    dev.read(0xA0, c)
    print("output: ", c)