class Matrix
  attr_reader :rows

  def initialize(matrix)
    @rows = matrix_to_rows(matrix)
  end

  def matrix_to_rows(matrix)
    matrix.each_line.map {|row| row.split.map { |element| element.to_i}}
  end

  def columns
    rows.transpose
  end

  def saddle_points

  end
end

if $PROGRAM_NAME == __FILE__
  matrix = Matrix.new("1 2\n3 4")
  matrix.saddle_points
end
