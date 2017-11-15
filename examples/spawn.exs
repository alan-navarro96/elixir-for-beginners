pid = spawn fn -> 1 + 2 end
IO.inspect Process.alive?(pid)
# true
IO.inspect Process.alive?(pid)
# false