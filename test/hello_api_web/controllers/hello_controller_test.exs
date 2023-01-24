defmodule HelloApiWeb.HelloControllerTest do
  use HelloApiWeb.ConnCase

  test "returns message with name if provided in params", %{conn: conn} do
    conn = get(conn, "/api/hello?name=Alan")
    assert json_response(conn, 200) == %{"message" => "Hello Alan"}
  end

  test "returns default message if name not provided in params", %{conn: conn} do
    conn = get(conn, "/api/hello")
    assert json_response(conn, 200) == %{"message" => "Hello World"}
  end
end
