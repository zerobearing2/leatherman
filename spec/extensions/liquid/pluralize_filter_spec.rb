require 'spec_helper'

describe 'Liquid::PluralizeFilter' do
  
  context "#pluralize" do

    it "should pluralize" do
      template = "You only have 2 {{'workout' | pluralize:2}} left."
      Liquid::Template.parse(template).render.should =~ /have 2 workouts left/
    end
    
  end

end