class Transpose
  def self.transpose(input)
    return "" if input == ""

    array_input = input.split("\n").map(&:chars)
    number_rows = array_input.length
    number_columns = array_input.map(&:length).max

    result = Array.new(array_input.map(&:length).max){ |i| array_input.map{ |e| e[i] } }

    for i in 0...number_columns do
      for j in 0...number_rows - 1 do
        if result[i][j].nil?
          for x in 1...number_rows do
            result[i][j] = " " unless result[i][-x].nil?
          end
        end
      end
    end
    
    result.map { |row| row.join }.join("\n")
  end
end

if $PROGRAM_NAME == __FILE__
  input = "T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR"
  print Transpose.transpose(input)
end
