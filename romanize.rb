module Romanize

  ROMAN_VALUES= {
    "VM" => 5000,
    "M" => 1000, "CM" => 900,
    "D" => 500, "CD" => 400, 
    "C" => 100, "XC" => 90,
    "L" => 50, "XL" => 40,
    "X" => 10, "IX" => 9,
    "V" => 5,  "IV" => 4,
    "I" => 1
  }

  def romanize
    begin
      raise InvalidNumber unless valid_number?(self)
      number = self
      result = ''
      ROMAN_VALUES.each do |key, value|
        number, quotient = [number % value, number / value]
        result << key * quotient if number && quotient
      end
      result
    rescue => e
      puts "Invalid Number!"
    end
  end

  private
  def valid_number?(num)
    num.is_a?(Integer) && num > 0
  end
end

class Fixnum
  include Romanize
end

=begin

## Testing results
 number = 1666
 puts number.romanize

=end