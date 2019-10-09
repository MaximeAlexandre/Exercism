class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix_to_rows(matrix)
    @columns = rows.transpose
  end

  def matrix_to_rows(matrix)
    matrix.each_line.map {|row| row.split.map { |element| element.to_i}}
  end

  def saddle_points
    rows.map.with_index { |row, row_index|
      row.map.with_index { |element, element_index|
        [row_index, element_index] if valid_saddle_point?(element, row.max, columns[element_index].min)
      }.compact
    }.flatten(1)
  end

  private

  def valid_saddle_point?(point, row_max, column_min)
    point == row_max && point == column_min
  end
end

# test part
if $PROGRAM_NAME == __FILE__
  # test with all points are saddle points because of the given definition
  # matrix = Matrix.new("5 5 5\n5 5 5\n5 5 5")

  #test from saddle_points_test.rb
  matrix = Matrix.new("4 5 4\n3 5 5\n1 5 4")
  print matrix.saddle_points
end
