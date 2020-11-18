# Specifically, to find the fuel required for a module,
# take its mass, divide by three, round down, and subtract 2.
import os
import math


class FuelModule:
    def __init__(self, fuel_mass_doc):
        self.incoming_mass = fuel_mass_doc
        self.fuel_required = []

    def calculate_mass(self):
        with open(os.path.join(os.path.dirname(os.path.abspath(__file__)), self.incoming_mass), 'rt') as in_file:
            data = in_file.readlines()

            for mass in data:
                fuel = int(mass.strip()) / 3
                fuel = math.floor(fuel) - 2
                self.fuel_required.append(fuel)

    def total_fuel(self):
        x = sum(self.fuel_required)
        print(x)


f = FuelModule("input.txt")
f.calculate_mass()
f.total_fuel()
