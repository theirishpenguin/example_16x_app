defmodule Example16xAppWeb.ThingControllerTest do
  use Example16xAppWeb.ConnCase


  setup %{conn: conn} do
    conn =
      conn
      |> put_req_header("accept", "application/vnd.api+json")
      |> put_req_header("content-type", "application/vnd.api+json")

    {:ok, conn: conn}
  end

  describe "GET /api/thing" do
    test "should do it", %{conn: conn} do
      conn = get(conn, "/api/thing")

      resp = json_response(conn, 200)

      assert resp == %{
        "data" => %{
          "attributes" => %{"volume_level" => 33},
          "id" => "singular",
          "type" => "things"
        },
        "jsonapi" => %{"version" => "1.0"}
      }
    end
  end
end
