
class Interest
  attr_reader :principal, :rate, :time, :compound_interest, :simple_interest, :difference
  #default values passed if we do not give argument, if we give argument then that will be valid
  def initialize(principal = 1000.00, time = 1.0, &block)
    if block_given?
      block.yield self
    else
      @principal = principal
      @time = time
    end
    @rate = (10 / 100.00)
    refresh
  end

  def principal=(principal)
    @principal = principal
    refresh
  end

  def time=(time)
    @time = time
    refresh
  end

  def rate=(rate)
    @rate = (rate / 100.00)
    refresh
  end

  def refresh
    unless rate.nil? || time.nil? || principal.nil?
      calculate_simple_interest
      calculate_compound_interest
      calculate_difference
    end
  end

  def calculate_simple_interest
    #SI = P * R * T (Principal * Rate * Time)
    @simple_interest = (principal * rate * time).round(2)
  end

  def calculate_compound_interest
    #CI = P * (1 + R)^n - P or P((1 + R)^-1)
    @compound_interest = (principal * ((1 + rate) ** time) - principal).round(2)
  end

  def calculate_difference
    @difference = (compound_interest - simple_interest).round(2)
  end

  protected :calculate_simple_interest, :calculate_compound_interest, :calculate_difference
  private :refresh
end
