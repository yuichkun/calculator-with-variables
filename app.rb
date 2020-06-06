# frozen_string_literal: true

class App
  WHITE_SPACE = ' '
  ZERO = '0'
  DIGITS = [ZERO, '1', '2', '3', '4', '5', '6', '7', '8', '9'].freeze
  def tokenize(str)
    str = str.split('')
    str.reject! do |chr|
      chr == WHITE_SPACE
    end
    
  end

  def parse(tokens, ast)
  end
end
