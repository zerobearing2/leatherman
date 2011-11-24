require 'spec_helper'

describe Array do
  
  context "#avg" do
    it("should avg integers") do
      [1,2,3].avg.should eq(2)
    end
    it("should avg floats") do
      [2.5,3.5,5.6].avg.round(4).should eq(3.8667)
    end
  end
  
  context "#XOR" do
    it("should XOR [1,2] and [2,3]") do
      ([1,2]^[2,3]).sort.should eq([1,3])
    end
  end
  
  context "#reject_empty" do
    it("should remove empty array from [1,2,\[\],4]") do
      [1,2,[],4].reject_blank.should eq([1,2,4])
    end
    it("should remove empty string from [1,2,\"\",4]") do
      [1,2,"",4].reject_blank.should eq([1,2,4])
    end
    it("should remove nil from [1,2,nil,4]") do
      [1,2,nil,4].reject_blank.should eq([1,2,4])
    end
  end

  context "#reject_blank" do
    it("should remove empty string from [1,2,\"\",4]") do
      [1,2,"",4].reject_blank.should eq([1,2,4])
    end
    it("should remove nil from [1,2,nil,4]") do
      [1,2,nil,4].reject_blank.should eq([1,2,4])
    end
  end
  
end