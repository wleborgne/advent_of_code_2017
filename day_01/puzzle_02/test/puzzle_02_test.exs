defmodule Puzzle02Test do
  use ExUnit.Case
  doctest Puzzle02

  test "1212 sums to 6" do
    assert 6 == Puzzle02.sum(1212)
  end

  test "1221 sums to 0" do
    assert 0 == Puzzle02.sum(1221)
  end

  test "123425 sums to 4" do
    assert 4 == Puzzle02.sum(123425)
  end

  test "123123 sums to 12" do
    assert 12 == Puzzle02.sum(123123)
  end

  test "12131415 sums to 4" do
    assert 4 == Puzzle02.sum(12131415)
  end
end
