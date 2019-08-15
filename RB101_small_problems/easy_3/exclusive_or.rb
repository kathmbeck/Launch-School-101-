def xor?(a,b)
  (a && !b) || (b && !a)
end

def xor_alt?(a,b)
  return false if a == b
  true
end