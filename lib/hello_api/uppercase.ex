defmodule HelloApi.Uppercase do
  def shout(name, shout \\ false) do
    if shout do
      String.upcase(name)
    else
      name
    end
  end
end
