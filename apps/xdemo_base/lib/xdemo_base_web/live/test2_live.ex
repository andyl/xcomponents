defmodule XdemoBaseWeb.Test2Live do

  use XdemoBaseWeb, :live_view

  import XdemoBaseWeb.Components

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, url, socket) do
    {:noreply, assign(socket, :url, url)}
  end

  # ----- helpers -----

end
