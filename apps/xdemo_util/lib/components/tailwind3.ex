defmodule Util.Tailwind3 do

  use Phoenix.Component

  @doc """
  An 'active' link for menu bars.  Just renders a span.
  """
  attr :class,      :string,  default: "",    doc: "Custom classes"
  attr :rest,       :global,  default: %{},   doc: "Additional HTML attributes added to the `a` tag."

  slot :inner_block, required: true, doc: "The content link content."

  def ulink_active(assigns) do
    ~H"""
    <span
    class={[
      "font-bold",
      "#{@class}"
    ]}
    {@rest}
    >
    <%= render_slot(@inner_block) %>
    </span>
    """
  end

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
    IO.inspect(assigns, label: "EIGHT")
    ~H"""
    <span>UNMATCHED</span>
    """
  end

end
