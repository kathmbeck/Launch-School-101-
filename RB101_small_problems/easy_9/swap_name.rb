def swap_name(string)
  array = string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'