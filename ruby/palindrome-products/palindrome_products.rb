class Palindromes
  attr_reader :max_factor, :min_factor, :range

  Result = Struct.new(:value, :factors)

  def initialize(factor)
    @max_factor = factor.fetch(:max_factor, 1)
    @min_factor = factor.fetch(:min_factor, 1)
    @range = [*min_factor..max_factor]
  end

  def generate
    range.map { |x| range.map { |y| x * y } }.flatten.uniq
  end

  def largest
    value = palindrome_list.max
    factors = factors_list(value)
    Result.new(value, factors)
  end

  def smallest
    value = palindrome_list.min
    factors = factors_list(value)
    Result.new(value, factors)
  end

  private

  def palindrome_list
    # generate.map { |element|
    #   element if element.to_s == element.to_s.reverse
    # }.compact
    generate.delete_if { |number| number.to_s != number.to_s.reverse }
  end

  def factors_list(value)
    factors_result = Array.new
    
    range.each { |digit|
      factors_result << [digit, value / digit].sort if value % digit == 0 && range.include?(value / digit)
    }
    factors_result.uniq
  end
end

# test part :
if $PROGRAM_NAME == __FILE__
  # palindromes = Palindromes.new(max_factor: 9)
  # palindromes = Palindromes.new(max_factor: 99, min_factor: 10)
  palindromes = Palindromes.new(max_factor: 999, min_factor: 100)
  # print palindromes.generate
  largest = palindromes.largest
  puts largest.value
  print largest.factors
end
