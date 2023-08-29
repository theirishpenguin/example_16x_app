defmodule ExampleAppWeb.ThingController do
  use ExampleAppWeb, :controller

  require Logger

  def show(conn, _) do
    render(conn, "show.json-api", data: %{id: 1, age: 33})
  end
end
