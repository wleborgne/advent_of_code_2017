defmodule Puzzle01Test do
  use ExUnit.Case
  doctest Puzzle01

  test "1122 sums to 3" do
    assert 3 == Puzzle01.sum(1122)
  end

  test "1234 sums to 0" do
    assert 0 == Puzzle01.sum(1234)
  end

  test "91212129 sums to 9" do
    assert 9 == Puzzle01.sum(91212129)
  end
end
