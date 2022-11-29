defmodule XdemoMilligramWeb.PageLive do
  use XdemoMilligramWeb, :live_view

  alias Phx.Demo.Helpers

  # ----- lifecycle callbacks -----

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end

  @impl true
  def handle_params(_params, url, socket) do
    {:noreply, assign(socket, :url, url)}
  end

  # ----- event handlers -----

  # ----- helpers -----

end