# Practice Problem 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = Hash.new
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

flintstones_hash

# Practice Problems 2 -4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Number 2 (Three ways to solve )
ages_only = ages.values
total_ages_loop = 0
loop do
  total_ages_loop += ages_only.pop
  break if ages_only.empty?
  total_ages_loop
end

total_ages = 0
ages.values.each {|age| total_ages += age}

ages.values.reduce(:+)

# Number 3
younger_people = ages.select{|name, age| age < 100}
younger_people

# Number 4
ages.values.min

#Practice Problem 5 & 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index {|name| name.start_with?("Be")}

flintstones.map!{|name| name[0,3]}

#Practice Problem  7
statement = "The Flintstones Rock"
letters = ('a'..'z').to_a + ('A'..'Z').to_a
final_count = Hash.new
letters.select do |letter|
  letter_freq = statement.scan(letter).count
  final_count[letter] = letter_freq if letter_freq > 0
end
final_count

#Practice Problem 9
words = "the flintstones rock"
def titleize(words)
  capitalized_words = words.split.map {|word| word.capitalize}
  capitalized_words.join(' ')
end

titleize(words)

# Practice Problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0..17
    details["age_group"] = 'kid'
  when 18..64
    details["age_group"] = 'adult'
  else
    details["age_group"] = 'senior'
  end
end

p munsters



