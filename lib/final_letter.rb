require 'letter'

class FinalLetter
  include Letter

  def path
    right = ALPHABET[0..position] - [ALPHABET[0..position].last]
    ALPHABET[0..position] + right.reverse
  end

  def left_side
    @letter + blank_spaces
  end
end