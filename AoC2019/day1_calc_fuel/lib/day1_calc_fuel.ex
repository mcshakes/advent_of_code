defmodule Day1CalcFuel do
  @moduledoc """
    Fuel required to launch a given module is based on its mass. Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.

    For example:

    For a mass of 12, divide by 3 and round down to get 4, then subtract 2 to get 2.
    For a mass of 14, dividing by 3 and rounding down still yields 4, so the fuel required is also 2.
    For a mass of 1969, the fuel required is 654.
    For a mass of 100756, the fuel required is 33583.
  """
  def prep_file_input do
    {:ok, file} = File.read("lib/inputs.txt")

    # input_arr = String.split(file, "\n")

    # int_arr = Enum.map(input_arr, fn x -> String.to_integer(x) end)

    # answers = Enum.map(int_arr, fn x -> calculate_fuel(x) end )

    file 
      |> String.split("\n")
      |> Enum.map(fn x -> String.to_integer(x) end)
      |> Enum.map(fn x -> calculate_fuel(x) end )
      |> Enum.join("\n")
      
      File.write("lib/fuel.txt", file)
  end

  def calculate_fuel(fuel) do
    fuel_needed = fuel |> divide |> round_down |> remove_two      
  end

  def divide(fuel) do
    fuel / 3
  end

  def round_down(fuel) do 
    Float.floor(fuel) |> trunc
  end

  def remove_two(fuel) do
    fuel - 2
  end
end
