ExUnit.start()

defmodule KataTest do
  use ExUnit.Case

  test "custom_reverse string" do
    assert Kata.custom_reverse("abc") == "cba"
  end
end

defmodule Kata do
  def custom_reverse(_string, _new_string \\ "")
  def custom_reverse("", new_string), do: new_string
  def custom_reverse(<<head :: binary-size(1)>> <> tail, new_string) do
    custom_reverse(tail, head <> new_string)
  end
end
