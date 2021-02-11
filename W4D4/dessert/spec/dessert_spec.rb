require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new("snowcone", 10, chef)}


  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("snowcone")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do 
        imaginary = Dessert.new("snowcone", '23', "Frosty")
      end.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("snow")
      expect(dessert.ingredients).to eq(["snow"])

      dessert.add_ingredient(:syrup)
      expect(dessert.ingredients).to include(:syrup)
    end
  end

  describe "#mix!" do
    before(:each) do
      @snowcone = Dessert.new("snowcone", 10, "chef")
      @stuff = %w(snow cone syrup straw)
      @stuff.each {|thing| @snowcone.add_ingredient(thing)}
      @snowcone.mix!
    end

    it "shuffles the ingredient array" do
      # snowcone = Dessert.new("snowcone", 10, "chef")
      # stuff = %w(snow cone syrup straw)
      # stuff.each {|thing| snowcone.add_ingredient(thing)}
      # snowcone.mix!
      expect(@snowcone.ingredients).to contain_exactly(*@stuff)
      expect(@snowcone.ingredients).to_not eq(@stuff) 
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(5)
      expect(dessert.quantity).to eq(5)
    end

    context "when the amount is greater than the quantity" do
      it "raises an error" do 
        expect {dessert.eat(15)}.to raise_error("not enough left!")
      end
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return("Chef Frosty the Great Baker")
      expect(dessert.serve).to include("Frosty")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
