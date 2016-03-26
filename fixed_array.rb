class FixedArray

  def initialize(input = 16)
    @array = Array.new(input)
  end

  def size
    @array.length
  end

  def get(index)
    raise IndexOutOfBoundsError if index >= self.size || index < 0
    @array[index]
  end

  def set(index, value)
    raise IndexOutOfBoundsError if index >= self.size || index < 0
    @array[index] = value
    @array[index]
  end

end


class IndexOutOfBoundsError < StandardError
end
