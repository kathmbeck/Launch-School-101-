def mess_with_demographics(demo_hash)
  new_hash = {}
  demo_hash.values.clone.each do |family_member|
    new_hash["age"] = family_member["age"] + 42
    new_hash["gender"] = "other"
  end
  new_hash
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

new_munsters = mess_with_demographics(munsters)

puts new_munsters