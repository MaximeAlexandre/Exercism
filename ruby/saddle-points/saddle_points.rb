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
    common_index.map { |element| [element, rows[element].index(row_max_value[element])] }
  end

  private

  def row_max_value
    rows.map { |row| row.max }
  end

  def index_row_max_value
    rows.map { |row| row.index(row.max) }
  end

  def column_min_value
    index_row_max_value.map { |e| columns[e].min }
  end

  def common_index
    row_max_value.map.with_index { |x, y| y if x == column_min_value[y] }.compact
  end
end

if $PROGRAM_NAME == __FILE__
  matrix = Matrix.new("4 5 4\n3 5 5\n1 5 4")
  print matrix.saddle_points
end
