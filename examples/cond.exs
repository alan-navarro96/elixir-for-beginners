y = 20
x = 1
z = cond do
   2 + 2 == y ->
     "This will not be true"
   x * 10 > y ->
     "Nor this"
   y == 20 ->
     "But this will"
end
IO.inspect z
# But this will

x = 3
z = cond do
   2 + 2 == y ->
     "This will not be true"
   x * 10 > y ->
     "Nor this"
   y == 20 ->
     "But this will"
end
IO.inspect z
#Nor this

