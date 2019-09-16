class Matrix
  attr_reader :rows

  def initialize(matrix_given)
    @rows = matrix_to_rows(matrix_given)
  end

  def matrix_to_rows(matrix)
    matrix.each_line.map {|row| row.split.map { |element| element.to_i}}
  end

  def columns
    rows.transpose
  end
end