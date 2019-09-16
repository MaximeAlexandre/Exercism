class SumOfMultiples
  attr_reader :multiple_numbers

  def initialize(*multiple_numbers)
    @multiple_numbers = multiple_numbers
  end

  def to(given_number)
    arr_sum_of_multiples = []
    all_natural_numbers = Array (1...given_number)

    all_natural_numbers.each { |natural_number|
      multiple_numbers.each { |multiple|
        if multiple == 0
          arr_sum_of_multiples << multiple
        elsif natural_number % multiple == 0
          arr_sum_of_multiples << natural_number
        end
      }
    }
    arr_sum_of_multiples.uniq.sum
  end
end