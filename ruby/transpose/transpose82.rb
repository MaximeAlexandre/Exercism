class Transpose
  def self.transpose(input_text)
    input_text.split.map {  |row|
      row.split("")
    }.transpose.map { |element|
      element.join
    }.join("\n")
  end
end

input = "AB\n123"
puts Transpose.transpose(input)