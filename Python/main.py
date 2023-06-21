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
    a = list(range(48))
    b = bytearray(a)
    print("In: ", b)
    dev.write(0x80, b)

    # wait
    time.sleep(0.5)

    # get output
    c = bytearray(16)
    dev.read(0xA0, c)
    print("Out_inverted: ", c)