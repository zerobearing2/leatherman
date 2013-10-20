require_relative '../../test_helper'

module Extensions::BSON
  class ObjectTest < MiniTest::Unit::TestCase

    def setup
      @bson1 = ::BSON::ObjectId.new
      @bson2 = ::BSON::ObjectId.new
    end

    def test_compare
      assert_equal -1, (@bson1 <=> @bson2)
      assert_equal 1, (@bson2 <=> @bson1)

      # sort ids
      BSON::ObjectId.new.tap do |id|
        assert_equal [@bson1, @bson2, id], [id, @bson2, @bson1].sort
      end
    end

    def test_to_xml
      assert_equal "<bson>#{@bson1.to_s}</bson>", @bson1.to_xml
      assert_equal "<id>#{@bson1.to_s}</id>", @bson1.to_xml(root: "id")
    end

  end
end
