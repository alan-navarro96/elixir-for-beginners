x = [1, 2, true, "completed"]
y = [true, true]
IO.inspect x ++ y
# [1, 2, true, "completed", true, true]
IO.inspect x -- y
# [1, 2, "completed"]

myTuple = {"string", 2.5, true}

IO.inspect tuple_size(myTuple)
# 3
IO.inspect elem(myTuple, 0)
# "string"
IO.inspect elem(myTuple, 1)
# 2.5
IO.inspect elem(myTuple, 2)
# true
myTuple = put_elem(myTuple, 0, "Hello world")
IO.inspect myTuple
# {"Hello world", 3, true}
