class Transpose
  def self.transpose(input)
    return "" if input == ""

    array_input = input.split("\n").map(&:chars)
    result = Array.new(array_input.map(&:length).max){ |i| array_input.map{ |e| e[i] } }

  end
end

if $PROGRAM_NAME == __FILE__
  input = "The longest line.\nA long line.\nA longer line.\nA line."
  Transpose.transpose(input)
end
