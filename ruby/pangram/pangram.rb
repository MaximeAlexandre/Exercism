class Pangram

  def self.pangram?(sentence)
    sentence.downcase.scan(/\w/).sort.join.squeeze.match?('abcdefghijklmnopqrstuvwxyz')
  end

end