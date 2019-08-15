
=begin
#input: integer that represents an angle
#output: string that represents the angle in degrees, minutes, and seconds
=end

DEGREE = "\xC2\xB0"
MIN_PER_DEGREE = 60
SEC_PER_MIN = 60
SEC_PER_DEGREE = MIN_PER_DEGREE * SEC_PER_MIN

def dms(angle)
total_seconds = (angle * SEC_PER_DEGREE).round
degree, remaining_seconds = total_seconds.divmod(SEC_PER_DEGREE)
minutes, seconds = remaining_seconds.divmod(SEC_PER_MIN)
format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
