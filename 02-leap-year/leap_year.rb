class Year
  def initialize(year)
    @year = year
  end

  def leap?
    div_by4? && (!div_by100? || div_by400?)
  end

  def div_by4?
    @year % 4 == 0
  end

  def div_by100?
    @year % 100 == 0
  end

  def div_by400?
    @year % 400 == 0
  end

end



