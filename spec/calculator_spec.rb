require 'spec_helper'
require_relative '../calculator'

RSpec.describe Calculator do
	context "#add" do
		it "should return 0 when input value is empty string" do
			cal = Calculator.new.add("")
			expect(cal).to eq(0)
    end

		it "should return sum of numbers when pass , between numbers" do
			cal = Calculator.new.add("1,5")
			expect(cal).to eq(6)
    end

    it "should return sum sum of numbers when pass new lines between numbers" do
			cal = Calculator.new.add("1\n2,3")
			expect(cal).to eq(6)
    end

    it "should return sum of numbers when pass different delimiters between numbers" do
			cal = Calculator.new.add("//;\n1;2;2,1;3")
			expect(cal).to eq(9)
    end

    it "should through exception when input value is negative" do
			cal = Calculator.new.add("//;\n1;2;-2")
			expect(cal.message).to eq("negative numbers not allowed -2")
    end
	end
end