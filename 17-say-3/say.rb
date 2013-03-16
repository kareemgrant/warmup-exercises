class Say

  ONE_BILLION = 10**9
  ONE_MILLION = 10**6

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def chunks
    guard_range

    billions, i = chop(value, ONE_BILLION)


  end

end