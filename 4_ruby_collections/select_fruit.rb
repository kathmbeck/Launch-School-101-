def select_fruit(produce)
  selected_produce = {}
  counter = 0
  name_of_produce = produce.keys
  loop do
    break if counter == produce.size
    current_produce = name_of_produce[counter]
    current_produce_category = produce[current_produce]
    if current_produce_category == 'Fruit'
      selected_produce[current_produce] = current_produce_category
    end
    counter +=1
  end
  selected_produce
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)