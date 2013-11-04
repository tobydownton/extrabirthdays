class PagesController < ApplicationController
  def home
  end

  def calculate_age
  	# Extract date of birth
  	# Assign it to an instance variable

		@raw_dob = params["post"]["date_of_birth"]

    @age_calculator = AgeCalculator.new(@raw_dob)
    @days_old = @age_calculator.days_old
    @weeks_old = @age_calculator.weeks_old
    @months_old = @age_calculator.months_old
    @years_old = @age_calculator.years_old
    @previous_bday = @age_calculator.previous_bday
    @days_since_last_bday = @age_calculator.days_since_last_bday
    @next_weeks_bday = @age_calculator.next_weeks_bday
  end

end