ExUnit.start()

defmodule KataWordTest do
  use ExUnit.Case

  test "deduplicate simple string" do
    assert KataWord.deduplicate("hello hello world") == "hello world"
  end
end

defmodule KataWord do
  def deduplicate(text) do
    String.split(text)
    |> Enum.uniq
    |> Enum.join(" ")
  end
end
