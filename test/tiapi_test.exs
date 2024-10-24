defmodule TiapiTest do
  use ExUnit.Case
  doctest Tiapi

  test "greets the world" do
    assert Tiapi.hello() == :world
  end
end
