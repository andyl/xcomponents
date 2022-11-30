defmodule XdemoBaseWeb.Test1Live do

  use XdemoBaseWeb, :live_view

  # alias Phx.Demo.Helpers

  # import Xcomponents.Tailwind3
  import XdemoBaseWeb.Components

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    data = %{
      "id1" => "MyData1",
      "id2" => "MyData2",
      "id3" => "MyData3",
      "id4" => "MyData4"
    }
    {:ok, assign(socket, :data, data)}
  end

  def handle_params(_params, url, socket) do
    {:noreply, assign(socket, :url, url)}
  end

  # ----- event handlers -----

end
