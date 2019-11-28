class ResistorColorDuo

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

  def self.value(color_array)

    color_array.map {|color| ENCODED_BAND_COLOR.index(color)}.join.to_i
  end

end