# Find the n-th Fibonacci number
defmodule Fibonacci do
    def find(n) when n == 1 or n == 0 do
        1
    end
    def find(n) do
        find(n-1) + find(n-2)
    end
end
IO.inspect Fibonacci.find(4)
# 5
