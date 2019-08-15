(1..99).each { |num| puts num if num.odd? }

(1..99).select { |num| puts num if num%2 == 1 }