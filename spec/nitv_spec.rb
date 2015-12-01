require "spec_helper"
require "nitv"

RSpec.describe Nitv do |config|
  describe "Nitv#is_valid?" do

    context "when invalid nit" do
      it "should return false" do
        nit = "3672326-7"
        expect(Nitv.is_valid?(nit)).to eq false
      end
    end

    context "when valid nit" do
      it "should return true" do
        nit = "3602978-5"
        expect(Nitv.is_valid?(nit)).to eq true
      end
    end

    context "when invalid nit format" do
      it "should raise exception" do
        nit = "36029785"
        expect { Nitv.is_valid?(nit) }.to raise_error Nitv::NitFormatError
      end
    end

  end
end
