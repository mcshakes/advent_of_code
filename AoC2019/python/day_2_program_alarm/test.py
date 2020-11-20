import unittest

from intcode_computer import IntcodeComputer


class TestSum(unittest.TestCase):

    def test_addition_opcode(self):
        prog = IntcodeComputer()
        sample_op = [1, 0, 0, 0, 99]
        expectation = [2, 0, 0, 0, 99]

        result = prog.add(0, 0, 0, sample_op)
        self.assertEqual(result, expectation)


if __name__ == '__main__':
    unittest.main()
