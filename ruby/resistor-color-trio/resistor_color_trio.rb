class ResistorColorTrio

    ENCODED_BAND_COLOR = [
      "black",
      "brown",
      "red",
      "orange",
      "yellow",
      "green",
      "blue",
      "violet",
      "grey",
      "white"
      ]

  attr_reader :color_coded_band

  def initialize(color_coded_band)
    @color_coded_band = color_coded_band
  end

  def label
    "Resistor value: #{sum_of_values}"
  end

  def two_first_value
    color_coded_band[0..1].map {|color|
      raise ArgumentError.new() if ENCODED_BAND_COLOR.include?(color) == false

      ENCODED_BAND_COLOR.index(color)}.join.to_i
  end

  def third_value
    10 ** ENCODED_BAND_COLOR.index(color_coded_band[2])
  end

  def sum_of_values
    sum = two_first_value * third_value
    if sum.digits.count > 3
      "#{sum.to_s.slice(0..-4)} kiloohms"
    else
      "#{sum} ohms"
    end
  end
end

puts ResistorColorTrio.new(["yellow", "black", "purple"]).label