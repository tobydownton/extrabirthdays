require 'addressable/uri'

class PagesController < ApplicationController
  API_KEY = "AIzaSyAjtrrpxwRz_6EYmf9fNZ6PBrqs9tXfUkE"


  def calculate_age
    @raw_dob = params["post"]["date_of_birth"]
    @user = User.new
    @user.date_of_birth = @raw_dob
		
    if @user.valid? == false
      flash[:notice] = "This is not a valid date of birth, try again!"
      redirect_to :back
    end


    if @user.date_of_birth.future? == true
      flash[:notice] = "You haven't been born yet, try again!"
      return
    end


    @age_calculator = AgeCalculator.new(@raw_dob)
    @dob = @age_calculator.dob
    @nice_dob = @age_calculator.nice_dob
    @next_dob_in_days = @age_calculator.next_dob_in_days
    @next_dob_in_weeks = @age_calculator.next_dob_in_weeks
    @next_dob_in_months = @age_calculator.next_dob_in_months
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