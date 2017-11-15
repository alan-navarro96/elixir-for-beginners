defmodule Server do
    def newRequest(avg) do
        receive do
            { num, sender } ->
                avg = avg + num
                send(sender, {:ok, "Current sum is #{avg}"})
                newRequest(avg)
        end
    end
end

# send requests and print response
defmodule Main do
    def main(serverPID) do
        {num, _} = IO.gets("enter a number: ") |> Integer.parse
        send(serverPID, {num , self()})
        message = receive do
            {:ok, msg} -> msg
            {_, pid} -> "Error received from #{inspect pid}"
        after
            1_000 -> "nothing after 1s"
        end
        IO.inspect message
        main(serverPID)
    end
end

# Create the server
serverPID = spawn fn -> Server.newRequest(0) end
Main.main(serverPID)
