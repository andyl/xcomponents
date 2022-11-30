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

  @doc """
  Renders the header nav.
  """

  # ----- unav_hdr -----

  attr :url, :string, required: true, doc: "Current URL"

  def unav_hdr(assigns) do
    ~H"""
    <Phoenix.Component.intersperse :let={site} enum={[:base, :milligram, :tailwind3]}>
      <:separator> | </:separator>
      <.unav_hdr_item url={@url} site={site} />
    </Phoenix.Component.intersperse>
    """
  end

  # ----- unav_hdr_item -----

  attr :url, :string, required: true, doc: "Current URL"
  attr :site, :any, required: true, doc: "Site atom"

  defp unav_hdr_item(assigns) do
    ~H"""
    <span >
      <.xlink :if={} href={}><%= "TBD" %></.xlink>
      <.ulink_active :if{} ><%= TBD %></.ulink_active>
      <%# Phoenix.HTML.raw Phx.Demo.Helpers.demolink(@url, @site, " Demo") %>
    </span>
    """
  end

end
