class AgeCalculator

	WEEKS_MILESTONES = [100,	123,	150,	200,	222,	250,	300,	333,	400,	444,	500,	555,	600,	666,	700,	777,	800,	888,	900,	999,	1000,	1111,	1234,	1500,	1750,	2000,	2222,	2500,	3000,	3333,	3500,	4000,	4321,	4444,	4500,	5000,	5555]

	def initialize(raw_dob)
		@dob = raw_dob.to_time
	end

	def days_old
		@days_old = ((Time.now - @dob) / 1.day).round
	end

	def weeks_old
		@weeks_old = ((Time.now - @dob) / 1.week).round
	end

	def months_old
		@months_old = ((Time.now - @dob) / 1.month).round
	end

	def years_old
		@years_old = ((Time.now - @dob.to_time) / 1.year).round
	end

	def previous_bday
    @previous_bday = Date.new(Date.today.year, @dob.month, @dob.day)

    if Date.today <= @previous_bday
      @previous_bday = @previous_bday - 1.year 
    end

    return @previous_bday
	end

	def days_since_last_bday
		@days_since_last_bday = ((Time.now - @previous_bday.to_time) / 1.day).round
	end

	def next_weeks_bday
		weeks_bday = 0
		WEEKS_MILESTONES.each {|x| if @weeks_old < x; weeks_bday = x; break; end }
		return weeks_bday
	end
	
end