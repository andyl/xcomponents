defmodule Util.Tailwind3 do

  use Phoenix.Component

  # ----- unav -----

  @doc """
  Renders a nav bar
  """

  attr :data, :any, required: true, doc: "Nav data"

  def unav(assigns) do
    ~H"""
    <Phoenix.Component.intersperse :let={item} enum={@data}>
      <:separator> | </:separator>
      <.unav_link item={item}/>
    </Phoenix.Component.intersperse>
    """
  end

  # ----- unav_link -----

  attr :item, :any, required: true, doc: "Menu item"

  def unav_link(%{item: %{state: "active"}} = assigns) do
    ~H"""
    <b><%= @item.label %></b>
    """
  end

  def unav_link(%{item: %{state: "inactive"}} = assigns) do
    ~H"""
    <Xcomponents.Tailwind3.xlink href={@item.href}>
    <%= @item.label %>
    </Xcomponents.Tailwind3.xlink>
    """
  end

  def unav_link(assigns) do
    ~H"""
    <span>UNMATCHED</span>
    """
  end

end
