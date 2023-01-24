defmodule HelloApiWeb.HelloController do
  use Phoenix.Controller
  import HelloApi.Uppercase


  def index(conn, %{"name" => name, "shout" => shout}) do
    s = String.downcase(shout) == "true"

    json(conn, %{message: "Hello #{shout(name, s)}", shout: s})
  end

  def index(conn, %{"name" => name}) do
    json(conn, %{message: "Hello #{name}"})
  end

  def index(conn, _params) do
    json(conn, %{message: "Hello World"})
  end
end
