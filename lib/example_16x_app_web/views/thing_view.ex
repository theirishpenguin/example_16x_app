defmodule Example16xAppWeb.ThingView do
  use Example16xAppWeb, :view

  attributes([:volume_level])

  def id(_data, _conn) do
    "singular"
  end
end
