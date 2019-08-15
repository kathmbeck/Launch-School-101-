

def initialize_switches(n)
  switches = {}
  1.upto(n) { |n| switches[n] = false }
  switches
end

def toggle_lights(switches, n)
  1.upto(n) do |n|
    switches.each do |light_position, on_off|
      switches[light_position] = !on_off if light_position % n == 0
    end
  end
  switches
end

def select_on_lights(switches)
 switches.select { |_light_position, on_off| on_off == true }.keys
end

def light_switch(number_of_lights)
  switches = initialize_switches(number_of_lights)
  switches = toggle_lights(switches, number_of_lights)
  select_on_lights(switches)
end

p light_switch(5) == [1, 4]
p light_switch(10) == [1, 4, 9]
p light_switch(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]