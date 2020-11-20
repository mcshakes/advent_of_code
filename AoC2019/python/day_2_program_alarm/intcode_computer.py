import os


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
                self.multiply(inp1, inp2, out, self.intcode)
            elif op == 99:
                break
            return self.intcode

    def group_by(self, my_list, chunk_size, fillvalue=None):
        args = [iter(my_list)] * chunk_size
        return zip(*args)

    def add(self, pos1, pos2, output, opcode):
        new_value = opcode[pos1] + opcode[pos2]
        opcode[output] = new_value
        return opcode

    def multiply(self, pos1, pos2, output, opcode):
        new_value = opcode[pos1] * opcode[pos2]
        opcode[output] = new_value
        return opcode


IC = IntcodeComputer()
x = IC.compute_sequence()
print(x)
