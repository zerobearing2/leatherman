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
      # preserve nils
      ::Hash[:test => nil].tap do |test|
        test.stringify!(preserve_nil: true)
        assert_nil test['test']
        assert test.key?('test')
        refute test.key?(:test)
      end

      # don't preserve nils
      ::Hash[:test => nil].tap do |test|
        test.stringify!(preserve_nil: false)
        assert_equal "", test['test']
        assert test.key?('test')
        refute test.key?(:test)
      end
    end

    def test_drop
      ::Hash[:test => nil, :test2 => "123"].tap do |test|
        assert_equal [:test], test.drop(:test2).keys
        assert_equal [:test2], test.drop(:test).keys
      end
    end

    def test_drop!
      ::Hash[:test => nil, :test2 => "123"].tap do |test|
        test.drop!(:test2)
        assert_equal [:test], test.keys
      end
    end

    def test_compact
      ::Hash[:test => nil, :test2 => "123"].compact.tap do |test|
        assert_equal [:test2], test.keys
      end
    end

  end
end
