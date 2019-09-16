class SpaceAge
  attr_reader :age, :earth_year

  def initialize(age)
    @age = age.to_f
    @earth_year = 31_557_600
  end

  def on_earth
    (age / earth_year).round(2)
  end

  def on_mercury
    (age / (earth_year * 0.2408467)).round(2)
  end

  def on_venus
    (age / (earth_year * 0.61519726)).round(2)
  end

  def on_mars
    (age / (earth_year * 1.8808158)).round(2)
  end

  def on_jupiter
    (age / (earth_year * 11.862615)).round(2)
  end

  def on_saturn
    (age / (earth_year * 29.447498)).round(2)
  end

  def on_uranus
    (age / (earth_year * 84.016846)).round(2)
  end

  def on_neptune
    (age / (earth_year * 164.79132)).round(2)
  end

end