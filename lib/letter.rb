module Letter
  ALPHABET = ('A'..'Z').to_a

  def initialize(letter, size = 0)
    @letter = letter
    @size = size
  end

  def position
    ALPHABET.index(@letter)
  end

  def line
    left_side + left_side[0..-2].reverse
  end

  def blank_spaces
    '_' * @size
  end
end