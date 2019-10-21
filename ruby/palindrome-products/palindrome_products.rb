class Palindromes
  attr_reader :max_factor, :min_factor, :range

  def initialize(factor)
    @max_factor = factor.fetch(:max_factor, 1)
    @min_factor = factor.fetch(:min_factor, 1)
    @range = [*min_factor..max_factor]
  end

  def generate
    range.map { |x| range.map { |y| x * y } }.flatten.uniq
  end

  def largest
    palindrome_list.max
  end

  def smallest
    palindrome_list.min
  end

  private

  def palindrome_list
    generate.map { |element|
      element if element.to_s == element.to_s.reverse
    }.compact
  end
end


if $PROGRAM_NAME == __FILE__
  palindromes = Palindromes.new(max_factor: 9)
  # palindromes = Palindromes.new(max_factor: 99, min_factor: 10)
  # print palindromes.generate
  print largest = palindromes.largest
  print largest = palindromes.smallest
  # print largest.value
end
