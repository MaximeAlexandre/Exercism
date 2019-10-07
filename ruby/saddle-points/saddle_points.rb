class Matrix
  attr_reader :rows, :saddle_point

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
    print max_rows = rows.map { |row| [row.index(row.max), row.max] }
    # min_columns = columns.map { |column| column.min }
    # print common_number = (max_rows & min_columns).join.to_i
    # saddle_point = rows.map.with_index { |row, index| [index, row.index(common_number)] }
  end
end

if $PROGRAM_NAME == __FILE__
  matrix = Matrix.new("18 3 39 19 91\n38 10 8 77 320\n3 4 8 6 7")
  print matrix.saddle_points
end
