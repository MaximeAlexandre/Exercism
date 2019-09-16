Encoded_band_color = [
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


value = ["violet", "black"]
puts value.map {|color| Encoded_band_color.index(color)}.join.to_i