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
    concatenate_digits(str)
  end

  def concatenate_digits (tokens)
    concatenated = []

    str_buffer = ''
    until tokens.empty?
      token = tokens.shift
      if DIGITS.include? token
        str_buffer += token
      else
        if str_buffer != ''
          concatenated.push str_buffer
          str_buffer = ''
        end
        concatenated.push token
      end
    end

    concatenated.push(str_buffer) if str_buffer != ''

    concatenated
  end

  def parse(tokens, ast)
  end
end
