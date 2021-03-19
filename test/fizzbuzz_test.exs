defmodule FizzbuzzTest do
  use ExUnit.Case
  doctest Fizzbuzz

  test "receive an list with a not number" do
    assert Fizzbuzz.start([2, 3, 5, "a"]) == {:ok, [2, :Fizz, :Buzz, "a"]}
  end

  test "receive list of numbers" do
    assert Fizzbuzz.start([3, 15, 5, 1]) == {:ok, [:Fizz, :FizzBuzz, :Buzz, 1]}
  end

  test "receive not list" do
    assert Fizzbuzz.start(2) == {:error, "Informe somente listas"}
  end

  test "without parameters" do
    assert Fizzbuzz.start() == {:error, "Essa funcao necessita de um parametro"}
  end
end
