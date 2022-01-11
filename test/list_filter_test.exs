defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count odd elements" do
      list1 = [1, 2, 3, 4, 5, 6]
      list2 = [1, "3"]
      list3 = ["1", 2, "3", 4, "banana"]

      assert ListFilter.call(list1) == 0
      assert ListFilter.call(list2) == 1
      assert ListFilter.call(list3) == 2
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
