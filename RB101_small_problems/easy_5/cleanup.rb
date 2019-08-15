ALPHABET = ('a'..'z').to_a

def cleanup(string)
  cleaned_chars = string.chars.map do |char|
      case ALPHABET.include?(char)
        when true then char
        when false then ' '
      end
    end
  cleaned_chars.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

def cleanup_alt(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# Input: string
# Output: string
# Data Structure: Array of characters

