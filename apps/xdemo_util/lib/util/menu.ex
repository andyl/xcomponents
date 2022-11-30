defmodule Util.Menu do

  alias Util.Menu

  defstruct [id: :tbd, label: "TBD", href: "/", state: "inactive"]

  def new_item(data) when is_map(data) do
    %Menu{}
    |> Map.merge(data)
  end

  def new_list(data) when is_list(data) do
    data
    |> Enum.map(&new_item(&1))
  end

  def set_active(list, tgt, predicate) do
    list
    |> Enum.map(&update_active(&1, tgt, predicate))
  end

  def active?(item, tgt, predicate) do
    predicate.(item, tgt)
  end

  def update_active(item, tgt, predicate) do
    new_state = if active?(item, tgt, predicate), do: "active", else: "inactive"
    Map.merge(item, %{state: new_state})
  end

end
