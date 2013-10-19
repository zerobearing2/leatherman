require_relative '../../test_helper'

module Extensions::Core
  class HashTest < MiniTest::Unit::TestCase

    def test_stringify
      test_hash = ::Hash[:test => nil]

      assert_equal( {'test' => nil}, 
        test_hash.stringify(preserve_nil: true), "stringify preserving nils")
      
      assert_equal( {'test' => ''}, 
        test_hash.stringify(preserve_nil: false), "stringify not preserving nils")
    end

    def test_stringify!
      skip "need tests"
    end

    def test_drop
      skip "need tests"
    end

    def test_drop!
      skip "need tests"
    end

    def test_compact
      skip "need tests"
    end

    def test_compact!
      skip "need tests"
    end

  end
end
