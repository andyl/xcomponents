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

end
