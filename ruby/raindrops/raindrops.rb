class Raindrops
  attr_reader :number, :list_number

  RAIN_NUMBER = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    new(number).conversion
  end

  def initialize(number)
    @number = number
    @list_number = Array.new(number) { |i| i + 1 }
  end

  def conversion
    @conversion ||= result.empty? ? number.to_s : result
  end

  private

  def factors
    list_number.delete_if { |digit| number % digit != 0 }
  end

  def result
    factors.map { |factor| RAIN_NUMBER[factor] }.join
  end
end


# test part
if $PROGRAM_NAME == __FILE__
  print Raindrops.convert(34)
end
