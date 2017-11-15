defmodule Concat do
  def join(a, b \\ nil, sep \\ " ")

  def join(a, b, _sep) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end
end

IO.inspect Concat.join("Marc", "Zucaritas", " & ")
# "Marc & Zucaritas"
IO.inspect Concat.join("Hello", "world")  
# "Hello world"
IO.inspect Concat.join(1, nil)
# 1
