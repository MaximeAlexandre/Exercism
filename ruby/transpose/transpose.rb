class Transpose
  def self.transpose(input)
    result = []

    return "" if input == ""
    
    array_input = input.split("\n")
    number_of_rows = array_input.length
    number_of_columns = array_input.max_by { |row| row.length }.length
    # array_input = input.split("\n").each { |row| row << " " until row.length == number_of_columns }

    for j in 0...number_of_columns do
      new_row = ""
      for i in 0...number_of_rows do
        if j > array_input[i].length - 1
          new_row += " "
        else
          new_row += array_input[i][j]
        end
      end
      result << new_row
    end

    result.join("\n")
  end
end