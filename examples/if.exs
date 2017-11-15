x = if true do
    "This works!"
end
IO.inspect x

# "This works!"
x = unless true do
   "This will never be seen"
end
IO.inspect x
# nil