defmodule Util.Menu do

  alias Util.Menu

  defstruct [label: "TBD", href: "/", state: "inactive"]

  def nav_hdr(_url) do

  end

  def nav_tst(_label) do
  end

  def new_item(data) when is_map(data) do
    %Menu{}
    |> Map.merge(data)
  end

  def new_list(data) when is_list(data) do
    data
    |> Enum.map(&new_item(&1))
  end

  def hdr_data(url \\ "http://localhost") do
    [:base, :milligram, :tailwind3]
    |> map_for(url)
    |> Enum.map(&new_item(&1))
    |> set_active_url(url)
  end

  def tst_data(label \\ "NA") do
    [
      %{label: "Test1", href: "/test1"},
      %{label: "Test2", href: "/test2"},
      %{label: "Test3", href: "/test3"},
      %{label: "Test4", href: "/test4"},
      %{label: "Test5", href: "/test5"},
    ]
    |> set_active_label(label)
  end

  def set_active_url(_data, _url) do
  end

  def set_active_label(_data, _label) do
  end

  def map_for(subsite, url) do
    %{label: label_for(subsite), href: href_for(subsite, url)}
  end

  def label_for(subsite) do
    case subsite do
      :base -> "Home"
      :milligram -> "Milligram"
      :tailwind3 -> "Tailwind3"
      :bootstrap5 -> "Bootstrap5"
    end
  end

  def href_for(_subsite, _url) do
  end

  def port_for(subsite) do
    base_port =
      case Application.get_env(:xcomponents, :env) do
        :dev -> 4040
        :test -> 6060
        :prod -> 8080
      end

    sub_port =
      case subsite do
        :base       -> 0
        :milligram  -> 1
        :tailwind3  -> 2
        :bootstrap5 -> 3
        :bulma      -> 3
      end

    base_port + sub_port
  end
end
