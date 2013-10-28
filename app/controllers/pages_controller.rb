class PagesController < ApplicationController
  def home
  end

  def calculate_age
  	# Extract date of birth
  	# Assign it to an instance variable
		@date_of_birth = params["post"]["date_of_birth"]
		@dob = @date_of_birth.to_time
		@days_old = ((Time.now - @dob) / 1.day).round

		# Find when last birthday was, amended from 
		# http://stackoverflow.com/questions/12926126/calculate-days-until-next-birthday-in-rails
		@bday = Date.new(Date.today.year, @dob.month, @dob.day)
    @bday -= 1.year if Date.today <= @bday
    (@bday - Date.today).to_i

    #Find how many years old
    @years = ((Time.now - @dob.to_time) / 1.year).round

    #Find how many days since last birthday
    @days_since_last_bday = ((Time.now - @bday.to_time) / 1.day).round
  end

end