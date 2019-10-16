class Palindromes
  attr_reader :max_factor, :min_factor, :range, :products_list

  def initialize(factor)
    @max_factor = factor[:max_factor]
    @min_factor = min_factor_value(factor[:min_factor])
    @range = [*min_factor..max_factor]
    @products_list = []
  end

  def generate
    list
  end

  def largest
    palindrome_list.max
  end

  def smallest
    palindrome_list.min
  end

  def factors
    
  end

  private

  def min_factor_value(min_factor)
    if min_factor.nil?
      1
    else
      min_factor
    end
  end

  def list
    range.each.with_index { |x, i|
      range.each { |y| products_list << x * y unless products_list.include?(x * y)
      }
    }
    products_list
  end

  def palindrome_list
    list.map { |element|
      element if element.to_s == element.to_s.reverse
    }.compact
  end
end


if $PROGRAM_NAME == __FILE__
  palindromes = Palindromes.new(max_factor: 9)
  # palindromes = Palindromes.new(max_factor: 99, min_factor: 10)
  # print palindromes.generate
  largest = palindromes.largest
  # print largest.factors
end