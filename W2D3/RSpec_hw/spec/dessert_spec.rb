require 'rspec'
require 'dessert'

=begin
Instructions:
implement all of the pending specs (the `it` statements without blocks)!
Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Gordon") }
  let(:cupcake) { Dessert.new("cupcake", 12, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(cupcake.type).to eq("cupcake")
    end

    it "sets a quantity" do
      expect(cupcake.quantity).to eq(12)
    end

    it "starts ingredients as an empty array" do
      expect(cupcake.ingredients).to be_an(Array) and match_array([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Ice Cream", "pint", chef) } .to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cupcake.add_ingredient("frosting")
      expect(cupcake.ingredients).to include("frosting")
    end
  end

  describe "#mix!" do

    it "shuffles the ingredient array" do
      cupcake.add_ingredient("eggs")
      cupcake.add_ingredient("flour")
      cupcake.add_ingredient("milk")
      cupcake.add_ingredient("frosting")
      original = cupcake.ingredients.dup
      cupcake.mix!
      expect(cupcake.ingredients).to_not eq(original)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do

      expect(cupcake.eat(2)).to eq(10)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cupcake.eat(20) }.to raise_error(RuntimeError, "not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Gordon")
      expect(cupcake.serve).to eq("Gordon has made 12 cupcakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cupcake)
      cupcake.make_more
    end
  end
end
