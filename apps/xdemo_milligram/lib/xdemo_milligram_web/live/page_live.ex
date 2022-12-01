defmodule XdemoMilligramWeb.PageLive do
  use XdemoMilligramWeb, :live_view

  alias Util.Menu.Hdr, as: HdrMenu

  import Util.Tailwind3

  # ----- lifecycle callbacks -----

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def handle_params(_params, url, socket) do
    hdr_nav = HdrMenu.data(url) |> HdrMenu.set_active(:milligram)
    {:noreply, assign(socket, url: url, hdr_nav: hdr_nav)}
  end

  # ----- event handlers -----

  # ----- helpers -----

end
