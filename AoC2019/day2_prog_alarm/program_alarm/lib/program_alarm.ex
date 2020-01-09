defmodule ProgramAlarm do

# comes in as array
# look at the first integer (position 0). Here, you will find an opcode - either 1, 2, or 99.
# 99 means program is finished and should halt. 
# Encountering an unknown opcode means something went wrong.
# Once you're done processing an opcode, move to the next one by stepping forward 4 positions.

  def build_alarm do
    data_set = prep_file_input

    fix = data_set
    # Step 1: Run opcode 1
    # Step 2: Step forward 4 positions
    # run an opcode
    # always steppign four positiosn forward

  end

  # Takes two positions
  def opcode_one(pos1, pos2) do
    # adds arr[pos1] + arr[pos2]
    # writes it in arr[pos3]

  end

  def opcode_two do
    
  end


  def prep_file_input do
    {:ok, file} = File.read("lib/input.txt")
    file 
      |> String.split(",")
      |> Enum.map(fn x -> String.to_integer(x) end) 
  end
  
end
