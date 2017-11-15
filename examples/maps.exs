map = %{:a => 1, 2 => :b, "third" => 3}
IO.inspect map["third"]
# 3
map = Map.put(map, :a, "letter A")
IO.inspect map[:a]
# "letter A"
