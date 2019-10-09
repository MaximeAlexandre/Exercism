class ETL
  attr_reader :old_format, :new_format

  def self.transform(old_format)
    new(old_format).transformation
  end

  def initialize(old_format)
    @old_format = old_format
    @new_format = Hash.new
  end

  def transformation
    old_format.each_pair { |point, letter_array|
      letter_array.each { |letter| new_format[letter.downcase] = point }
    }

    @transformation ||= new_format
  end
end
