defmodule Util.Menu.Hdr do
  @moduledoc """
  Generate a cross-demo menu data with valid port number.

  Note: each Demo Webapp listens on it's own port:

  | Webapp            | Dev Port | Prod Port |
  |-------------------|----------|-----------|
  | XdemoBaseWeb      | 4040     | 8080      |
  | XdemoMilligramWeb | 4041     | 8081      |
  | XdemoTailwind3Web | 4042     | 8082      |

  The function requires two elements:

  Firstly, the current environment needs to be captured using `config.exs`:

    config :phoenix_live_editable,
      env: Mix.env()

  Secondly, the Server URL need to be captured in each LiveView, using the
  `handle_params` callback.

    def handle_params(_params, url, socket) do
      {:noreply, assign(socket, :url, url)}
    end
  """

  @doc """
  Call in the 'update' function of your live_view.
  assign(socket, :tst_menu, Util.Menu.Hdr.data(@url) |> set_active(:base)
  """
  def data do
    data("http://localhost")
  end

  def data(url) do
    [:base, :milligram, :tailwind3]
    |> Enum.map(&(struct_for(&1, url)))
    |> Util.Menu.new_list()
  end

  def set_active(data, id) when is_atom(id) do
    data
    |> Util.Menu.set_active(id, &active?/2)
  end

  def active?(item, id) when is_atom(id) do
    item.id == id
  end

  def struct_for(subsite, url) do
    %{id: subsite, label: label_for(subsite), href: href_for(subsite, url)}
  end

  def label_for(subsite) do
    case subsite do
      :base       -> "Home"
      :milligram  -> "Milligram Demo"
      :tailwind3  -> "Tailwind3 Demo"
      :bootstrap5 -> "Bootstrap5 Demo"
      :bulma      -> "Bulma Demo"
    end
  end

  def href_for(subsite, url) do
    uri = URI.parse(url)
    tgt_port = port_for(subsite)
    "#{uri.scheme}://#{uri.host}:#{tgt_port}/"
  end

  def port_for(subsite) do
    base_port =
      case Application.get_env(:xcomponents, :env) do
        :dev  -> 4040
        :test -> 6060
        :prod -> 8080
      end

    sub_port =
      case subsite do
        :base       -> 0
        :milligram  -> 1
        :tailwind3  -> 2
        :bootstrap5 -> 3
        :bulma      -> 4
      end

    base_port + sub_port
  end

end
