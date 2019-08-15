def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |word, count|
    count[word.size] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

def word_sizes_2(str)
  str.split.each_with_object(Hash.new(0)) do |word, count|
    count[word.count('A-Za-z')] += 1
  end
end

p word_sizes_2('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes_2('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes_2("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes_2('') == {}




# Inputs: string
# Output: hash of integers
# Data structure: array, new hash


