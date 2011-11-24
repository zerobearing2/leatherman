require 'spec_helper'

describe 'Speed' do
  
  it("should convert 50mph to kmh") do
    50.speed.mph_to_kmh.round(4).should eq(80.4672)
  end
  
  it("should convert 200m/s to kmh") do
    200.speed.ms_to_kmh.round(4).should eq(720.0)
  end

  it("should convert 200m/s to mph") do
    200.speed.ms_to_mph.round(4).should eq(447.3873)
  end

end