require_relative 'fixed_array'

describe FixedArray do

  describe "#new" do
    it "generates an array of the specified size" do
      array1 = FixedArray.new(12)
      expect(array1.size).to eq 12
    end

    it "generates an array of length 16 if no value is given" do
      array1 = FixedArray.new
      expect(array1.size).to eq 16
    end
  end

  describe "#get" do
    it "returns the value contained at a given index number" do
      array1 = FixedArray.new(['A', 'B', 'C', 'D', 'E'])
      expect(array1.get(1)).to eq 'B'
    end

    it "raises error if given index is larger than array length" do
      array1 = FixedArray.new(['A', 'B', 'C', 'D', 'E'])
      expect { array1.get(6) }.to raise_error(IndexOutOfBoundsError)
    end

    it "raises error if given index is less than array length" do
      array1 = FixedArray.new(['A', 'B', 'C', 'D', 'E'])
      expect { array1.get(-1) }.to raise_error(IndexOutOfBoundsError)
    end
  end

  describe "#set" do
    it "sets a value of the given index number to the given value" do
      array1 = FixedArray.new(['A', 'B', 'X', 'D', 'E'])
      expect(array1.set(2, 'C')).to eq 'C'
    end

    it "raises error if given index is larger than array length" do
      array1 = FixedArray.new(['A', 'B', 'C', 'D', 'E'])
      expect { array1.get(6) }.to raise_error(IndexOutOfBoundsError)
    end

    it "raises error if given index is less than array length" do
      array1 = FixedArray.new(['A', 'B', 'C', 'D', 'E'])
      expect { array1.get(-1) }.to raise_error(IndexOutOfBoundsError)
    end
  end

end