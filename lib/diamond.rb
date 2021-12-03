require 'letter'
require 'initial_letter'
require 'middle_letter'
require 'final_letter'

class Diamond
  END_OF_LINE = "\n"

  def build(character)
    output = ''
    line_letters(character).each do |letter|
      output << letter.line + END_OF_LINE
    end
    output
  end

  private

  def line_letters(character)
    final_letter = FinalLetter.new(character)

    letters = Hash.new(MiddleLetter)
    letters['A'] = InitialLetter
    letters[character] = FinalLetter

    line = []
    final_letter.path.each do |letter|
      line << letters[letter].new(letter, size(final_letter))
    end
    line
  end

  def size(final_letter)
    final_letter.position
  end
end
