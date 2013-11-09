class PagesController < ApplicationController
  def home
  end

  def calculate_age
    @raw_dob = params["post"]["date_of_birth"]
    @user = User.new
    @user.date_of_birth = @raw_dob
		
    if @user.valid? == false
      flash[:notice] = "This is not a valid date of birth, try again"
      redirect_to :back
    end

    @age_calculator = AgeCalculator.new(@raw_dob)
    @days_old = @age_calculator.days_old
    @weeks_old = @age_calculator.weeks_old
    @months_old = @age_calculator.months_old
    @years_old = @age_calculator.years_old
    @previous_bday = @age_calculator.previous_bday
    @days_since_last_bday = @age_calculator.days_since_last_bday
    @next_weeks_bday = @age_calculator.next_weeks_bday
    @next_days_bday = @age_calculator.next_days_bday
    @next_months_bday = @age_calculator.next_months_bday
  end

end