require "minitest/autorun"
require_relative "../warehouse_picker_functions.rb"

class TestWarehouse < Minitest::Test

def test_item_at_bay
  item = item_at_bay("b5")
  assrt_equal("nail filer", item)
end




end