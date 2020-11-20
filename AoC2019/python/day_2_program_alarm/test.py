import unittest

from intcode_computer import IntcodeComputer


class TestSum(unittest.TestCase):

    def test_addition_opcode(self):
        prog = IntcodeComputer()
        sample_op = [1, 0, 0, 0, 99]
        expectation = [2, 0, 0, 0, 99]

        result = prog.add(0, 0, 0, sample_op)
        self.assertEqual(result, expectation)

    def test_multiplication_opcode(self):
        prog = IntcodeComputer()
        sample_op = [2, 3, 0, 3, 99]
        expectation = [2, 3, 0, 6, 99]

        result = prog.multiply(3, 0, 3, sample_op)
        self.assertEqual(result, expectation)

    def test_another_multiplication_opcode(self):
        prog = IntcodeComputer()
        sample_op = [2, 4, 4, 5, 99, 0]
        expectation = [2, 4, 4, 5, 99, 9801]

        result = prog.multiply(4, 4, 5, sample_op)
        self.assertEqual(result, expectation)

    def test_addition_and_multiplication_opcode(self):
        prog = IntcodeComputer()
        sample_op = [1, 1, 1, 4, 99, 5, 6, 0, 99]
        #  interim = [1, 1, 1, 4, 2, 5, 6, 0, 99]
        expectation = [30, 1, 1, 4, 2, 5, 6, 0, 99]

        interim = prog.add(1, 1, 4, sample_op)
        result = prog.multiply(5, 6, 0, sample_op)
        self.assertEqual(result, expectation)        


if __name__ == '__main__':
    unittest.main()
