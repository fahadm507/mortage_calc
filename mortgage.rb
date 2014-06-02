
class Mortgage
  attr_reader :home_value, :down_payment_percentage, :apr, :duration_in_years, :down_payment

  def initialize(home_value, down_payment_percentage, apr, duration_in_years)
    @home_value = home_value
    @down_payment_percentage = down_payment_percentage
    @apr = apr
    @duration_in_years = duration_in_years
  end

  def down_payment
    @down_payment = (@down_payment_percentage * home_value)
  end

  def monthly_payment
    monthly_payment = (apr/12) * (@home_value - @down_payment)/(1-(1+ apr/12)**(-1 * duration_in_years * 12))
  end

  def total_interest_paid
    total_interest_paid = monthly_payment * 360 - (home_value - down_payment)
  end
end
