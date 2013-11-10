class AgeCalculator

	WEEKS_MILESTONES = [100,	123,	150,	200,	222,	250,	300,	333,	400,	444,	500,	555,	600,	666,	700,	777,	800,	888,	900,	999,	1000,	1111,	1234,	1500,	1750,	2000,	2222,	2500,	3000,	3333,	3500,	4000,	4321,	4444,	4500,	5000,	5555]
	DAYS_MILESTONES = [100,	500,	666,	1000,	1111,	1234,	2000,	2222,	3000,	3333,	4000,	4444,	5000,	5555,	6000,	6666,	7000,	7777,	8000,	8888,	9000,	9999,	10000,	11111,	12345,	12500,	15000,	17500,	20000,	22222,	25000,	30000,	33333,	35000,	40000]
	MONTHS_MILESTONES = [22,	25,	30,	33,	40,	44,	50,	55,	60,	66,	70,	77,	80,	88,	90,	99,	100,	111,	123,	150,	200,	222,	250,	300,	333,	400,	444,	500,	555,	600,	666,	700,	777,	800,	888,	900,	999,	1000,	1111,	1250]

	def initialize(raw_dob)
		@dob = raw_dob.to_time
	end

#Trying to get dob in format I want with nice_dob
	def nice_dob
		@nice_dob = @dob.strftime("%d %b %Y")
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

	def next_days_bday
		days_bday = 0
		DAYS_MILESTONES.each {|x| if @days_old < x; days_bday = x; break; end }
		return days_bday
	end

		def next_months_bday
		months_bday = 0
		MONTHS_MILESTONES.each {|x| if @months_old < x; months_bday = x; break; end }
		return months_bday
	end
	
end