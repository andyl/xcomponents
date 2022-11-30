defmodule Phx.Demo.Components.Tailwind3 do

  use Phoenix.Component

  attr :href, :string, doc: "the link href"
  attr :class, :string, doc: "custom classes", default: ""
  attr :rest, :global, doc: "custom HTML attributes", default: %{}
  slot :inner_block, required: true

  def alink(assigns) do
    ~H"""
    <.link
      class={"underline decoration-blue-400 hover:decoration-blue-800 decoration-2 #{@class}"}
      href={@href}
      {@rest}
    >
    <%= render_slot(@inner_block) %>
    </.link>
    """
  end
end
