require 'spec_helper'

describe Hash do
  
  context "#stringify" do
    let(:val) { Hash[:test => nil] }

    context "preserve nil" do
      subject { val.stringify(preserve_nil: true) }
      it { should eq({'test' => nil}) }
    end

    context "don't preserve nil" do
      subject { val.stringify(preserve_nil: false) }
      it { should eq({'test' => ''}) }
    end

  end

  pending "#stringify!"
  pending "#drop"
  pending "#drop!"
  pending "#compact"
  pending "#compact!"

end