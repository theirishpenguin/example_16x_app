defmodule Example16xAppWeb.ThingController do
  use Example16xAppWeb, :controller

  require Logger

  def show(conn, _) do
    render(conn, "show.json-api", data: %{volume_level: 33})
  end
end
