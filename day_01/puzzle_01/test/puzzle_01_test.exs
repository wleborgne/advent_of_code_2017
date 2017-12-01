defmodule Puzzle01Test do
  use ExUnit.Case
  doctest Puzzle01

  test "1122 sums to 3" do
    assert 3 == Puzzle01.sum(1122)
  end
end
