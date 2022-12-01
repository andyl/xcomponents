defmodule XdemoBaseWeb.PageLive do

  use XdemoBaseWeb, :live_view

  alias Util.Menu.Hdr, as: HdrMenu

  import Xcomponents.Tailwind3
  import Util.Tailwind3

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, url, socket) do
    hdr_nav = HdrMenu.data(url) |> HdrMenu.set_active(:base)
    {:noreply, assign(socket, url: url, hdr_nav: hdr_nav)}
  end

  # ----- event handlers -----

  # ----- helpers -----

end
