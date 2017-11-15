defmodule User do
    defstruct name: "Alan", age: 21
end

defmodule Main do
  def main do
    john = %User{}
    IO.inspect %User{}
    # %User{age: 21, name: "Alan"}
    IO.inspect %User{age: 24, name: "Autumn"}
    # %User{age: 24, name: "Autumn"}
  end
end

Main.main

