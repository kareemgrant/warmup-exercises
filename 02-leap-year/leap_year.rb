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
          response("yes")
        else
          response("no")
        end
      else
        response("yes")
      end
    else
      response("no")
    end
  end

  def response(answer)
    puts answer == "yes" ? "#{@year} is a leap year" : "#{@year} is a Not a leap year"
  end
end

class Fixnum
  def leap_year?
    if @year % 4 == 0
      if @year % 100 == 0
        if @year % 400 == 0
          response("yes")
        else
          response("no")
        end
      else
        response("yes")
      end
    else
      response("no")
    end
  end
end

3000.leap_year?

# Year.new(1997).leap?
# Year.new(1996).leap?
# Year.new(1900).leap?
# Year.new(2000).leap?
