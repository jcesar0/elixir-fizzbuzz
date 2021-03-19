defmodule Fizzbuzz do

  def start(numbers) when is_list(numbers) do
    fizzbuzz_result = numbers
    |> Enum.map(&check_is_numb_convert/1)

    {:ok, fizzbuzz_result}
  end
  def start(numbers), do: {:error, "Informe somente listas"}
  def start(), do: {:error, "Essa funcao necessita de um parametro"}

  defp check_is_numb_convert(s) when is_number(s) do
    s
    |> convert_number
  end
  defp check_is_numb_convert(s), do: s

  defp convert_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :FizzBuzz
  defp convert_number(number) when rem(number, 3) == 0, do: :Fizz
  defp convert_number(number) when rem(number, 5) == 0, do: :Buzz
  defp convert_number(number), do: number
end
