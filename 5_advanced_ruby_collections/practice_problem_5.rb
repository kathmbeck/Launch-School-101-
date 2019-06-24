munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age_males = 0

munsters.each_value do |demographics|
  if demographics["gender"] == "male"
    total_age_males += demographics["age"]
  end
  total_age_males
end

p total_age_males

