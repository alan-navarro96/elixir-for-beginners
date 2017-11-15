case {1, 2, 3} do
    {4, 5, 6} ->
     IO.inspect "This clause won't match"
   {1, x, 3} ->
     IO.inspect "This clause will match and bind x to 2 in this clause, value of x: #{x}"
   _ ->
     IO.inspect "This clause would match any value"
end
# This clause will match and bind x to 2 in this clause, value of x: 2

x = 1
y = 10
case y do
   ^x -> 
    IO.inspect "Won't match"
   _ -> 
    IO.inspect "Will match"
end
# Will match

x = 10
y = 10
case y do
   ^x -> 
    IO.inspect "Won't match"
   _ -> 
    IO.inspect "Will match"
end
# Won't match

