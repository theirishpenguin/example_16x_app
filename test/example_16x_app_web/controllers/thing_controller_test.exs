defmodule ExampleAppWeb.ThingControllerTest do
  use ExampleAppWeb.ConnCase

  describe "GET /api/thing" do
    test "should do it", %{conn: conn} do
      # Exercise

      conn = get(conn, "/api/thing")

      resp = json_response(conn, 200)
    end
  end
end
