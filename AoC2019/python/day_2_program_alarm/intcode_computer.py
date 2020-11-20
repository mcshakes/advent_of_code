import os

# 1) incoming Intcode program comes in as list of Integers

#  - 99 means that  program is finished and should immediately halt.
#  - Opcode 1 adds together numbers read from two positions and stores the result in a third position.
# The three integers immediately after the opcode tell you these three positions -
# the first two indicate the positions from which you should read the input values,
# and the third indicates the position at which the output should be stored.

# For example, if your Intcode computer encounters 1,10,20,30, it
# should read the values at positions 10 and 20, add those values,
# and then overwrite the value at position 30 with their sum.

# Opcode 2 works exactly like opcode 1, except it multiplies the two inputs instead of adding them.
# Again, the three integers after the opcode indicate where the inputs and outputs are, not their values.

# Once you're done processing an opcode, move to the next one by stepping forward 4 positions.


class IntcodeComputer:

    PARENT_PATH = os.path.dirname(os.path.abspath(__file__))
    INTCODE_LOCATION = os.path.join(PARENT_PATH, "input.txt")

    def __init__(self, intcode_file=INTCODE_LOCATION):
        with open(intcode_file, 'r') as inputfile:
            as_string = inputfile.read().split(",")
            self.intcode = [int(i) for i in as_string]

    def compute_sequence(self):
        for op, inp1, inp2, out in self.group_by(self.intcode, 4):
            if op == 1:
                self.add(inp1, inp2, out, self.intcode)
            elif op == 2:
                self.multiply(inp1, inp2, out)

    def group_by(self, my_list, chunk_size, fillvalue=None):
        args = [iter(my_list)] * chunk_size
        return zip(*args)

    def add(self, pos1, pos2, output, opcode):
        new_value = opcode[pos1] + opcode[pos2]
        opcode[output] = new_value
        return opcode

    def multiply(self, pos1, pos2, output):
        print("POSITION1", pos1)
        print("POSITION1", pos2)
        print("WHERE IT GOES", output)


IC = IntcodeComputer()
IC.compute_sequence()
