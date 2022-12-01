defmodule XdemoBaseWeb.Test5Live do

  use XdemoBaseWeb, :live_view

  alias Util.Menu.Tst, as: TstMenu

  import Util.Tailwind3

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, url, socket) do
    tst_nav = TstMenu.data() |> TstMenu.set_active(:test5)
    {:noreply, assign(socket, url: url, tst_nav: tst_nav)}
  end

  # ----- event handlers -----

end
