send self(), {:hello, "world"}
x = receive do 
    {:hello, msg} -> msg
    {:world, msg} -> "won't match"
end
IO.inspect x
# "world"
