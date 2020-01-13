require "test_helper"

class RstructTest < Minitest::Test
  Value = Rstruct.new(:value)

  def test_it_defines_struct
    assert_equal Value.name, 'RstructTest::Value'
    value = Value.new(100)
    assert_equal value.value, 100
    assert_equal value, Value.new(100)
    case value
    in Value[n]
        assert_equal n, 100
    else
      assert false
    end
  end
end
