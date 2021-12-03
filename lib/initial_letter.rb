class InitialLetter
  include Letter

  def left_side
    blank_spaces + @letter
  end
end