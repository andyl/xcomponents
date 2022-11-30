defmodule XdemoBaseWeb.PageLive do

  use XdemoBaseWeb, :live_view

  alias Phx.Demo.Helpers

  import Xcomponents.Tailwind3

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, url, socket) do
    {:noreply, assign(socket, :url, url)}
  end

  # ----- event handlers -----

  # ----- helpers -----

end
