require 'spec_helper'

describe 'BSON::ObjectId' do
  pending "#to_xml"
  
  context "#<=>" do
    before do
      @bson1 = BSON::ObjectId.new # created before bson2
      @bson2 = BSON::ObjectId.new # created after bson1
    end
    
    it("bson1 compared to bson2 should be -1") do
      (@bson1 <=> @bson2).should eq(-1)
    end

    it("bson2 compared to bson1 should be 1") do
      (@bson2 <=> @bson1).should eq(1)
    end
    
    it("should sort ids") do
      id = BSON::ObjectId.new
      [id, @bson2, @bson1].sort.should eq([@bson1, @bson2, id])
    end

  end
end