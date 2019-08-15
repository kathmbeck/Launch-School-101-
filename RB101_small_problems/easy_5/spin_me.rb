def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

puts spin_me("hello world") # "olleh dlrow"

str = "hello world"
puts str.object_id
puts spin_me(str).object_id