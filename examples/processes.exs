parent = self()
spawn fn -> send(parent, {:hello, self()}) end
message = receive do
    {:hello, pid} -> "Got hello from #{inspect pid}"
after
    1_000 -> "nothing after 1s"
end
IO.inspect message
# "Got hello from #PID<0.48.0>"