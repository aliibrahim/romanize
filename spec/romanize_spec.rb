require 'spec_helper'

describe Romanize do

  describe ".romanize" do

    context "when number is invalid!" do
      it "prints Invalid Number! message" do
        expect(STDOUT).to receive(:puts).with("Invalid Number!")
        number = -1
        number.romanize
      end

    end

    context "when number is valid!" do
      it "returns valid roman output for the number" do
        number = 1666
        expect(number.romanize).to eq('MDCLXVI')
      end
    end
  end
end
