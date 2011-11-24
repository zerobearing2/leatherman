require 'spec_helper'

describe 'Distance' do
  
  it("should convert 2mi to meters") do
    2.distance.mi_to_m.round(4).should eq(3218.688)
    2.distance.mi_to_meters.round(4).should eq(3218.688)
  end

  it("should convert 3218.688m to miles") do
    3218.688.distance.m_to_mi.round(4).should eq(2.0)
    3218.688.distance.meters_to_mi.round(4).should eq(2.0)
  end
    
end