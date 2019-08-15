# input: string
# output : Boolean value
# Data Structure: array of blocks as string
# Algorithim
  # iterate through capitalized characters in word
  # select blocks used by characters in word,
  #compare size of blocks_used array to the word size


BLOCKS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']

def block_word?(word)
  blocks_used = []
  word.upcase.chars.each do |char|
    blocks_used << BLOCKS.select { |pair| pair.include?(char) }
  end
  blocks_used.uniq.size == word.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true



def block_word_solution?(word)
  upcased_word = word.upcase
  BLOCKS.none? { |block| upcased_word.count(block) > 1 }
end