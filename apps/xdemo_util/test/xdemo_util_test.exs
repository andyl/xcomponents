defmodule XdemoUtilTest do
  use ExUnit.Case
  doctest XdemoUtil

  test "greets the world" do
    assert XdemoUtil.hello() == :world
  end
end
