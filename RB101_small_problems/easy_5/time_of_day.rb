require 'time'

HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(number)
  minutes = number % MINUTES_IN_DAY
  hours, minutes = minutes.divmod(MINUTES_IN_HOUR)
  "#{'%02d'% hours}:#{'%02d' % minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


# Further Exploration

def time_with_day(delta_minutes)
  time = Time.new(2019, 7, 28)
  time += delta_minutes * 60
  time.strftime('%A %H:%M')
end


p time_with_day(0)
p time_with_day(-3)
p time_with_day(35)
p time_with_day(-1437)
p time_with_day(3000)
p time_with_day(800)
p time_with_day(-4231)

## After Midnight

def after_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i
  return 0 if hours == HOURS_IN_DAY && minutes == 0
  hours * 60 + minutes
end

def before_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i
  return 0 if hours == HOURS_IN_DAY && minutes == 0
  MINUTES_IN_DAY - (hours * 60 + minutes)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


