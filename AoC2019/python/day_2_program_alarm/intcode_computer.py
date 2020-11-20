import os


class IntcodeComputer:

    PARENT_PATH = os.path.dirname(os.path.abspath(__file__))
    INTCODE_LOCATION = os.path.join(PARENT_PATH, "input.txt")

    def __init__(self, intcode_file=INTCODE_LOCATION):
        with open(intcode_file, 'r') as inputfile:
            as_string = inputfile.read().split(",")
            self.intcode = [int(i) for i in as_string]

    def compute_sequence(self):
        opcodes = self.intcode

        position = 0

        while opcodes[position] != 99:
            position1 = opcodes[position + 1]
            position2 = opcodes[position + 2]
            destination = opcodes[position + 3]

            if opcodes[position] == 1:
                opcodes[destination] = opcodes[position1] + opcodes[position2]
            elif opcodes[position] == 2:
                opcodes[destination] = opcodes[position1] * opcodes[position2]
            else:
                print('Unknown Opcode')
                break
            position += 4

        return opcodes

    # def compute_sequence(self):
    #     args = [iter(self.intcode)] * 4
    #     # for op, inp1, inp2, out in self.group_by(self.intcode, 4):
    #     for op, inp1, inp2, dest in zip(*args):
    #         import ipdb
    #         ipdb.set_trace()
    #         if op == 1:
    #             self.add(inp1, inp2, dest)
    #         elif op == 2:
    #             self.multiply(inp1, inp2, dest)
    #         elif op == 99:
    #             break
    #         else:
    #             print('Unknown Opcode')
    #             break
    #         return self.intcode

    # def group_by(self, my_list, chunk_size, fillvalue=None):
    #     args = [iter(my_list)] * chunk_size
    #     return zip(*args)

    def add(self, pos1, pos2, dest):

        new_value = self.intcode[pos1] + self.intcode[pos2]
        self.intcode[dest] = new_value

    def multiply(self, pos1, pos2, dest):
        new_value = self.intcode[pos1] * self.intcode[pos2]
        self.intcode[dest] = new_value
        # return opcode


IC = IntcodeComputer()
x = IC.compute_sequence()
print(x)
