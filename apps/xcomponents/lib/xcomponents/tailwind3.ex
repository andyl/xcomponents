defmodule Xcomponents.Tailwind3 do
  @moduledoc """
  Provides core UI components for Tailwind3.

  The components in this module use Tailwind CSS, a utility-first CSS framework.
  See the [Tailwind CSS documentation](https://tailwindcss.com) to learn how to
  customize the generated components in this module.

  Icons are provided by [heroicons](https://heroicons.com), using the
  [heroicons_elixir](https://github.com/mveytsman/heroicons_elixir) project.
  """

  use Phoenix.Component

  alias Phoenix.LiveView.JS

  # LiveView BuiltIn Components

  @doc """
  Provides simple styling for the built-in `link` component.

  See
  [Phoenix.Component](https://hexdocs.pm/phoenix_live_view/Phoenix.Component.html#components)
  docs for full info.
  """
  attr :class,      :string,  default: "",    doc: "Custom classes"
  attr :csrf_token, :any,     default: true,  doc: "Boolean or custom token to use for links with an HTTP method other than `get`."
  attr :href,       :any,     default: nil,   doc: "Uses traditional browser navigation to the new location."
  attr :method,     :string,  default: nil,   doc: "The HTTP method to use with the link."
  attr :navigate,   :string,  default: nil,   doc: "Navigates from a LiveView to a new LiveView."
  attr :patch,      :string,  default: nil,   doc: "Patches the current LiveView."
  attr :replace,    :boolean, default: false, doc: "Update browser history when using `:patch` or `:navigate`"
  attr :rest,       :global,  default: %{},   doc: "Additional HTML attributes added to the `a` tag.", include: ~w(download hreflang referrerpolicy rel target type)

  slot :inner_block, required: true, doc: "The content rendered inside of the `a` tag."

  def xlink(assigns) do
    ~H"""
    <Phoenix.Component.link
    class={[
      "underline decoration-blue-400 hover:decoration-blue-800 decoration-2",
      "xcom-active:no-underline xcom-active:font-bold xcom-active:cursor-none ",
      "#{@class}"
    ]}
    csrf_token={@csrf_token}
    href={@href}
    method={@method}
    navigate={@navigate}
    patch={@patch}
    replace={@replace}
    {@rest}
    ><%= render_slot(@inner_block) %></Phoenix.Component.link>
    """
  end

  # Core Components

  defdelegate xmodal(assigns), to: XcomponentsWeb.CoreComponents, as: :modal
  defdelegate xflash(assigns), to: XcomponentsWeb.CoreComponents, as: :flash
  defdelegate xsimple_form(assigns), to: XcomponentsWeb.CoreComponents, as: :simple_form
  defdelegate xbutton(assigns), to: XcomponentsWeb.CoreComponents, as: :button
  defdelegate xinput(assigns), to: XcomponentsWeb.CoreComponents, as: :input
  defdelegate xlabel(assigns), to: XcomponentsWeb.CoreComponents, as: :label
  defdelegate xerror(assigns), to: XcomponentsWeb.CoreComponents, as: :error
  defdelegate xheader(assigns), to: XcomponentsWeb.CoreComponents, as: :header
  defdelegate xtable(assigns), to: XcomponentsWeb.CoreComponents, as: :table
  defdelegate xlist(assigns), to: XcomponentsWeb.CoreComponents, as: :list
  defdelegate xback(assigns), to: XcomponentsWeb.CoreComponents, as: :back

  # JS Commands

  defdelegate xshow(js \\ %JS{}, id), to: XcomponentsWeb.CoreComponents, as: :show
  defdelegate xhide(js \\ %JS{}, id), to: XcomponentsWeb.CoreComponents, as: :hide
  defdelegate xshow_modal(js \\ %JS{}, id), to: XcomponentsWeb.CoreComponents, as: :show_modal
  defdelegate xhide_modal(js \\ %JS{}, id), to: XcomponentsWeb.CoreComponents, as: :hide_modal

  # GetText Commands

  defdelegate xtranslate_error(args), to: XcomponentsWeb.CoreComponents, as: :translate_error
  defdelegate xtranslate_errors(errors, field), to: XcomponentsWeb.CoreComponents, as: :translate_errors

end
