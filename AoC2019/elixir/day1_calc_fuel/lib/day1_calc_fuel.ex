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

    file
    |> String.split("\n")
    |> Enum.map(fn x -> String.to_integer(x) end)

    # Portion below would complete part one
    # |> Enum.map(fn x -> calculate_fuel(x) end )

    |> Enum.map(&wish_for_total_fuel/1)
    |> Enum.sum()
  end

  # @spec wish_for_total_fuel(mass) :: integer
  def wish_for_total_fuel(mass) do
    case calculate_fuel(mass) do
      fuel when fuel > 0 ->
        fuel + wish_for_total_fuel(fuel)

      _ ->
        0
    end
  end

  def calculate_fuel(fuel) do
    fuel
    |> divide
    |> round_down
    |> remove_two
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
