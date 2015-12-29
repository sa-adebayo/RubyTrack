
class Interest
  attr_reader :principal, :rate, :time, :compound_interest, :simple_interest, :difference
  #default values passed if we do not give argument, if we give argument then that will be valid
  def initialize(principal = 1000, time = 1, &block)
    if block_given?
      block.yield self
    else
      self.principal = Float('%.2f' % principal)
      self.time = time.to_f
      self.rate = Float('%.2f' % (10 / 100.00))
    end
    refresh
  end

  def principal=(principal)
    @principal = Float('%.2f' % principal)
    refresh
  end

  def time=(time)
    @time = time.to_f
    refresh
  end

  def rate=(rate)
    @rate = Float('%.2f' % (rate / 100.00))
    refresh
  end

  def refresh
    begin
      calculate_simple_interest
      calculate_compound_interest
      calculate_difference
    end unless rate.nil? || time.nil? || principal.nil?
  end

  def calculate_simple_interest
    #SI = P * R * T (Principal * Rate * Time)
    @simple_interest = ('%.2f' % (principal * rate * time)).to_f
  end

  def calculate_compound_interest
    #CI = P * (1 + R)^n - P or P((1 + R)^-1)
    @compound_interest = ('%.2f' % (principal * ((1 + rate) ** time) - principal)).to_f
  end

  def calculate_difference
    @difference = (compound_interest - simple_interest).round(2)
  end

  protected :calculate_simple_interest, :calculate_compound_interest, :calculate_difference
  private :refresh
end
