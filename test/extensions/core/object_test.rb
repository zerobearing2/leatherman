require_relative '../../test_helper'

module Extensions::Core
  class ObjectTest < MiniTest::Unit::TestCase

    def test_is_numeric
      assert 1.is_numeric?, "integer is numeric"
      assert 1.2.is_numeric?, "float is numeric"
      assert "1".is_numeric?, "string of integer is numeric"
      assert "1.2".is_numeric?, "string of float is numeric"

      refute "A".is_numeric?, "letter is not numeric"
      refute :A.is_numeric?, "symbol is not numeric"
    end

  end
end
