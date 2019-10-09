class ArmstrongNumbers
  attr_reader :number

  def self.include?(number)
    new(number).armstrong
  end

  def initialize(number)
    @number = number
  end

  def armstrong
    @armstrong ||= number if calcul == number
  end

  private

  def calcul
    number.digits.sum { |digit| digit ** number.digits.length }
  end
end

#test part
if $PROGRAM_NAME == __FILE__
  print ArmstrongNumbers.include?(5)
end
