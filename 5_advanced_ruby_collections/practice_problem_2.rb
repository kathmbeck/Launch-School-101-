books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

ordered_books = books.sort_by do |book|
  book[:published]
end

p ordered_books


# Input: array of hashes
# Output: array of hashes correctly ordered
# Rules: altered array should be ordered by year of publication

# Algortithim:
# Call sort method on books array with local variable book for block invocation.
# # Block return value will be based on the value of the "published" key converted to an integer.
# **doesn't need to be converted to integer since all four characters in length
