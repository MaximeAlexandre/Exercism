class Year
  
  def self.leap?(year_tested)

    if year_tested % 400 == 0
      return true
    
    elsif year_tested % 100 == 0
      return false
    
    elsif year_tested % 4 == 0
      return true
    
    else
      return false
    end
  end
end