import os
import math


class FuelModule:
    def __init__(self, fuel_mass_doc):
        self.incoming_mass = fuel_mass_doc
        self.refined_fuel = []
        self.fuel_required = []

    def prep_incoming_fuel(self):
        with open(os.path.join(os.path.dirname(os.path.abspath(__file__)), self.incoming_mass), 'rt') as in_file:
            data = in_file.readlines()

            for mass in data:
                fuel = int(mass.strip())
                self.refined_fuel.append(fuel)

    def recursive_fuel_breakdown(self, fuel_input):
        

        while (fuel_input / 3 - 2) > 0:
            f_input = fuel_input / 3
            f_input = math.floor(f_input) - 2
            self.fuel_required.append(f_input)
            return self.recursive_fuel_breakdown(f_input)            

    def calculate(self):
        f = self.refined_fuel

        for fuel in f:
            self.recursive_fuel_breakdown(fuel)

    def total_fuel(self):
        return sum(self.fuel_required)


f = FuelModule("input.txt")
f.prep_incoming_fuel()
f.calculate()
x = f.total_fuel()
print(x)
