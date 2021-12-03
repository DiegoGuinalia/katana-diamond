require 'letter'

class MiddleLetter
  include Letter

  def left_side
    left = '_' * (@size + 1)
    location = @size - position
    left[location] = @letter
    left
  end
end