class Year
  def initialize(year)
    @year = year

    # on every year that is evenly divisible by 4
    # except every year that is evenly divisible by 100
    # if divisible by 100 but evenly divisible by 400 then a leap year.
  end

  def leap?
    if @year % 4 == 0

      if @year % 100 == 0

        if @year % 400 == 0
          puts "#{@year} IS a leap year!!!!"
        else
          puts "#{@year} is NOT a leap year - 100"
        end

      else
        puts "#{@year} IS a leap year!!!!"
      end

    else
      puts "#{@year} is NOT a leap year"
    end

  end
end

Year.new(1997).leap?
Year.new(1996).leap?
Year.new(1900).leap?
Year.new(2000).leap?
