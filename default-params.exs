# Black magic fuckery right here
defmodule DefaultParams do
  def f(a, b \\ 2, c \\ 3, d) do
    IO.inspect([a, b, c, d])
  end
end
