defmodule HelloFriend do
    def hello(name) do
        "hello, " <> name
    end
end
IO.inspect HelloFriend.hello("Alan")
# "hello, Alan"

defmodule Math do
  def sum(a,b) do
    a + b
  end
end
IO.inspect Math.sum(2, 5)
# 7