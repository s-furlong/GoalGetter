defmodule GoalGetterTest do
  use ExUnit.Case
  doctest GoalGetter

  test "greets the world" do
    assert GoalGetter.hello() == :world
  end
end
