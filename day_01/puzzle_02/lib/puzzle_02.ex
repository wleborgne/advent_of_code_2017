defmodule Puzzle02 do

  def sum(input) when is_integer(input) do
    digits = Integer.digits(input)
    size = Enum.count(digits)

    {_, result} = Enum.map_reduce(0..size-1, 0, fn(i, acc) ->
      first = Enum.at(digits, i)
      second = Enum.at(digits, Integer.mod(i + Integer.floor_div(size, 2), size))

      new_acc = case first == second do
        true -> first + acc
        false -> acc
      end
      {:ok, new_acc}
    end)
    result
  end
end
