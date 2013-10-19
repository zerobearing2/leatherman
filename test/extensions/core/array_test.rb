require_relative '../../test_helper'

module Extensions::Core
  class ArrayTest < MiniTest::Unit::TestCase

    def test_avg
      assert_equal 2, [1,2,3].avg, "Array of integers"
      assert_equal 3.8667, [2.5,3.5,5.6].avg.round(4), "Array of floats"
    end

    def test_XOR
      assert_equal [1,3], ([1,2]^[2,3]).sort, "XOR array of integers"
    end

    def test_reject_empty
      assert_equal [1,2,4], [1,2,[],4].reject_empty, "reject empty array element in array"
      assert_equal [1,2,4], [1,2,"",4].reject_empty, "reject empty string element in array"
      assert_equal [1,2,4], [1,2,nil,4].reject_empty, "reject nil element in array"
    end

    def test_reject_blank
      assert_equal [1,2,4], [1,2,[],4].reject_blank, "reject empty array element in array"
      assert_equal [1,2,4], [1,2,"",4].reject_blank, "reject blank string element in array"
      assert_equal [1,2,4], [1,2,nil,4].reject_blank, "reject nil element in array"
    end

    def test_every_n
      assert_equal [1], [1].every(2), "every 2 elements from array with 1 element"
      assert_equal [1,3,5], [1,2,3,4,5,6].every(2), "every 2 elements"
      assert_equal [1,4], [1,2,3,4,5,6].every(3), "every 3 elements"
    end

  end
end
