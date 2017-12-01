defmodule Puzzle01 do
  @moduledoc """
  Documentation for Puzzle01.
  """

  @doc """

	Puzzle #1 for Day #1 of Advent of Code 2017

	Sum of digits which match next digit in a circular
	string.

	Example: 1122 = 3 (1 + 2)
		 1111 = 4 (1 + 1 + 1 + 1)
		 1234 = 0
		 91212129 = 9
  """
  def sum(input) when is_integer(input) do
    digits = Integer.digits(input)

    digits ++ [List.first(digits)]
    |> do_sum(0)
  end

  defp do_sum([], val), do: val
  defp do_sum([_ | []], val), do: val
  defp do_sum([ head | [ next | _] = tail ], val) do
    new_val = case head == next do
      true -> val + head
      false -> val
    end
    do_sum(tail, new_val)
  end
end
