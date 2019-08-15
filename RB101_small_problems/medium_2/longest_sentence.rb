#input : string
#output: how many words in longest sentence, output the sentence
#rules: sentences can end with . ! ?
# algorithim:
   #convert the string into an array of sentences
   #
   #iterate through the array an return the longest sentence
   #print sentence

def longest_sentence(text)
  sentences = text.split('.' || '?' || "!")
  longest_length = 0
  longest_sentence = nil
  sentences.each do |sentence|
    current_sentence_length = sentence.split.size
    if current_sentence_length > longest_length
      longest_length = current_sentence_length
      longest_sentence = sentence
    end
  end
  puts longest_sentence
  longest_length
end


# try it with max_by

def max_sentence(text)
  sentences = text.split('.' || '?' || "!")
  longest_sentence = sentences.max_by { |sentence| sentence.split.size }
  puts longest_sentence
  puts "The longest sentence is #{longest_sentence.split.size} words."
end


#longest_word
def longest_word(text)
  words = text.split
  longest_word = words.max_by { |word| word.size }
  puts "The longest word is '#{longest_word}' with a length of #{longest_word.size}."
end

def longest_paragraph(text)
  paragraphs = text.split(/^$/)
  longest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
  puts "The longest paragraph is #{longest_paragraph.split.size} words."
end




sample_text = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

p longest_sentence(sample_text)
max_sentence(sample_text)
longest_word(sample_text)
longest_paragraph(sample_text)
