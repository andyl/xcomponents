defmodule XdemoBaseWeb.PageLive do
  use XdemoBaseWeb, :live_view
  # use Phoenix.LiveEditableView

  alias Phx.Demo.Helpers
  # alias XdemoBaseWeb.PageHandler

  # alias Phx.Demo.Components.Tailwind3

  # ----- lifecycle callbacks -----

  def mount(_params, _session, socket) do
    # {:ok, assign(socket, :viewdata, "CLICK ME TO EDIT")}
    {:ok, socket}
  end

  def handle_params(_params, url, socket) do
    {:noreply, assign(socket, :url, url)}
  end

  # ----- event handlers -----

  # def handle_event(_tag, _data, socket) do
  #   {:noreply, socket}
  # end
  #
  # def handle_info({:viewupdate, %{"data" => newdata}}, socket) do
  #   {:noreply, assign(socket, :viewdata, newdata)}
  # end

  # ----- helpers -----

end
