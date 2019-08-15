=begin
  input: string representing time
  output: integer representing min after midnight
  algo:
    set hours equal to string[0,2] and minutes equal to string[3, 2]
    convert to integers
    return value of hours * minutes plus minutes

=end

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  delta_min = time[0,2].to_i * MINUTES_PER_HOUR + time[3,2].to_i
  delta_min == MINUTES_PER_DAY ? 0 : delta_min
end

def before_midnight(time)
  delta_min = time[0,2].to_i * MINUTES_PER_HOUR + time[3,2].to_i
  delta_min = 1440 - delta_min
  delta_min == 1440 ? 0 : delta_min
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
