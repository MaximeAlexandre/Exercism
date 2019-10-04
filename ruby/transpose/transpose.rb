class Transpose
  attr_reader :input_text, :number_rows, :number_columns, :result

  def self.transpose(input_text)
    return "" if input_text == ""

    new(input_text).transposition
  end

  def initialize(input_text)
    @input_text = input_text.split("\n").map(&:chars)
    @number_rows = @input_text.length
    @number_columns = @input_text.map(&:length).max
    @result = Array.new(number_columns){ |i| @input_text.map{ |e| e[i] } }
  end

  def transposition
    for i in 0...number_columns do
      for j in 0...number_rows - 1 do
        if result[i][j].nil?
          for x in 1...number_rows do
            result[i][j] = " " unless result[i][-x].nil?
          end
        end
      end
    end

    result.map(&:join).join("\n")
  end
end
