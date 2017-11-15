last = spawn fn -> receive do
    { :ping, sender, sender2 } ->
        send(sender, {:pong, self(), sender2})
    end
end

mid = spawn fn -> receive do
    { :ping, sender } ->
        send(last, {:ping, sender, self()})
    end
end

send(mid, {:ping, self()})

message = receive do
    {:pong, pid, pid2} -> "Got a pong from #{inspect pid} #{inspect pid2}"
after
    1_000 -> "nothing after 1s"
end
IO.inspect message