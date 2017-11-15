ponger = spawn fn -> receive do
    { :ping, sender } ->
        send(sender, {:pong, self()})
    end
end

send(ponger, {:ping, self()})

message = receive do
    {:pong, pid} -> "Got a pong from #{inspect pid}"
after
    1_000 -> "nothing after 1s"
end
IO.inspect message