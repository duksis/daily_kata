ExUnit.start()

defmodule KataTest do
  use ExUnit.Case

  test "custom_reverse binary string" do
    assert Kata.custom_reverse("abc") == "cba"
  end

  test "custom_reverse charlist" do
    assert Kata.custom_reverse('abc') == 'cba'
  end
end

defmodule Kata do
  def custom_reverse(string) when is_list(string), do: custom_reverse(string, [])
  def custom_reverse(string) when is_binary(string), do: custom_reverse(string, "")

  def custom_reverse("", new_string), do: new_string
  def custom_reverse([], new_string), do: new_string
  def custom_reverse(<<head :: binary-size(1)>> <> tail, new_string) do
    custom_reverse(tail, head <> new_string)
  end
  def custom_reverse([head | tail], new_string) do
    custom_reverse(tail, [head | new_string])
  end
end
