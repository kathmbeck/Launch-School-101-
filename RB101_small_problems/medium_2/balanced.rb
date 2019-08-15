# return false if count of () is odd
# iterate through string, use a counter value to track open and closed paratheses
# add 1 if open, subtract 1 if closed, if counter is ever negative, return false
def balanced?(string, pair)
  counter = 0
  string.chars.each do |char|
    case char
      when '(' then counter += 1
      when ')' then counter -= 1
    end
    return false if counter < 0
  end
  counter == 0 ? true : false
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

def balanced_alt?(str)
  parens = str.delete('^()')
  return false if parens[0] == ')' || parens[-1] == '('
  parens.size.even?
end

p balanced_alt?('What (is) this?') == true
p balanced_alt?('What is) this?') == false
p balanced_alt?('What (is this?') == false
p balanced_alt?('((What) (is this))?') == true
p balanced_alt?('((What)) (is this))?') == false
p balanced_alt?('Hey!') == true
p balanced_alt?(')Hey!(') == false
p balanced_alt?('What ((is))) up(') == false


# Further Exploration
PAIRS = %w((), {}, [])
QUOTES = "'"

def balanced_extended?(string)
  counter = 0
  string.chars.each do |char|
    case char
      when '(' then counter += 1
      when ')' then counter -= 1
    end
    return false if counter < 0
  end
  string.chars.each do |char|
    case char
      when '[' then counter += 1
      when ']' then counter -= 1
    end
    return false if counter < 0
  end
  string.chars.each do |char|
    case char
      when '{' then counter += 1
      when '}' then counter -= 1
    end
    return false if counter < 0
  end
  return false if string.count("'").odd?
  counter == 0 ? true : false
end

p balanced_extended?("[This one has square brackets.]") == true
p balanced_extended?("'This one has quotes' but too many.'") == false
p balanced_extended?("This one has {{curly} braces}.") == true
p balanced_extended?("This one has {{{curly} braces}.") == false
