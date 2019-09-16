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

  def color_decoded_band
    color_coded_band.map {|color|
      raise ArgumentError.new("error") if ENCODED_BAND_COLOR.include?(color) == false

      ENCODED_BAND_COLOR.index(color)}.join
  end

  def sum_of_values
    two_first_color_value = color_decoded_band[0..1].to_i
    third_color_value = 10 ** color_decoded_band[2].to_i
    sum = two_first_color_value * third_color_value
    
    if sum.digits.count > 3
      "#{sum.to_s.slice(0..-4)} kiloohms"
    else
      "#{sum} ohms"
    end
  end
end