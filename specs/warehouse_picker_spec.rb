require "minitest/autorun"
require_relative "../warehouse_picker_functions.rb"


class TestWarehouse < Minitest::Test

def test_item_at_bay
  item = item_at_bay("b5")
  item_second = item_at_bay("c4")
  assert_equal("nail filer", item)
  assert_equal("word search", item_second)
end

def test_bay_return_item
  item = bay_return_item("nail filer")
  assert_equal("b5", item)
end

def test_list_of_bays
  item = list_of_bays("b10", "b6", "b5")
  assert_equal("nail filer, tooth paste, cookie jar", item)
end

def test_list_of_items
  item = list_of_items("shoe lace", "rusty nail", "leg warmers")
  assert_equal("c1, c9, c10", item)
end

# #Further tasks

# def test_bays_items_distance_calculate
#   item_first = bays_items_distance_calculate("b5", "b10", "b6")
#   item_second = bays_items_distance_calculate("b3", "c7", "c9", "a3")
#   assrt_equal("nail filer, cookie jar, tooth paste, they're five bays apart", item_first)
#   assrt_equal("picture frame, paint brush, shoe lace, blouse, they're 15 bays apart", item_second)
# end

# def test_items_find_bays_and_order_from_entrance
#   item_first = items_find_bays_and_order_from_entrance("shoe lace" , "rusty nail", "leg warmers")
#   item_second = items_find_bays_and_order_from_entrance("hanger", "deodorant", "candy wrapper", "rubber band")
#   assrt_equal("c1, c9, c10", item_first)
#   assrt_equal("a10, a4, c8,b9",item_second)
# end



end