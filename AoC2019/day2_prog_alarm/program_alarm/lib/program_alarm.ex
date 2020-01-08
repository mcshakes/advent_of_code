defmodule ProgramAlarm do

# comes in as array
# look at the first integer (position 0). Here, you will find an opcode - either 1, 2, or 99.
# 99 means program is finished and should halt. 
# Encountering an unknown opcode means something went wrong.

  # This takes a file and returns an array of integers
  def prep_file_input do
    {:ok, file} = File.read("lib/input.txt")

    file 
      |> String.split(",")
      |> Enum.map(fn x -> String.to_integer(x) end) 
  end

  def opcode_one do
    
  end

  def opcode_two do
    
  end
end
