#!/usr/bin/ruby
class Interest
  attr_reader :simple_interest, :compound_interest, :rate, :principal, :time

  def initialize(principal = 0, rate = 0, time = 0)
    @principal = Float('%.2f' % principal)
    @rate = Float('%.2f' % (rate / 100.00))
    @time = time
    refresh
  end

  def refresh
    calculate_simple_interest
    calculate_compound_interest
  end

  def rate=(new_rate)
    @rate = Float('%.2f' % (new_rate / 100.00))
    refresh
  end

  def principal=(new_principal)
    @principal = Float('%.2f' % new_principal)
    refresh
  end

  def time=(new_time)
    @time = new_time
    refresh
  end

  def calculate_simple_interest
    #SI = P * R * T (Principal * Rate * Time)
    @simple_interest = ('%.2f' % (@principal * @rate * @time))
  end

  def calculate_compound_interest
    #CI = P * (1 + R)^n - P or P((1 + R)^-1)
    @compound_interest = ('%.2f' % (@principal * ((1 + @rate) ** @time) - @principal))
  end

  protected :calculate_simple_interest, :calculate_compound_interest
  private :refresh
end
