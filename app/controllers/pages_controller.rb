class PagesController < ApplicationController
  def home
  end

  def calculate_age
  	# Extract date of birth
  	# Assign it to an instance variablr
  	# Render it on the page

		@date_of_birth = params["post"]["date_of_birth"]
  end

end