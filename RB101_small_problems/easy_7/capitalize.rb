def word_cap(string)
  string.split.map {|word| word.capitalize}.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


#without #capitalize method

def word_cap_alt(string)
  word_array = string.split.map do |word|
        word[0].upcase + word[1..-1].downcase
       end
  word_array.join(' ')
end

puts word_cap_alt('four score and seven') == 'Four Score And Seven'
puts word_cap_alt('the javaScript language') == 'The Javascript Language'
puts word_cap_alt('this is a "quoted" word') == 'This Is A "quoted" Word'
