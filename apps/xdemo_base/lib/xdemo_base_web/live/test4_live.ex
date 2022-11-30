defmodule XdemoBaseWeb.Test4Live do

  use XdemoBaseWeb, :live_view

  import XdemoBaseWeb.AppComponents

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(_params, url, socket) do
    {:noreply, assign(socket, :url, url)}
  end

  # ----- event handlers -----


end
