defmodule XdemoBaseWeb.AppComponents do
  @moduledoc """
  Provides App UI components.

  The components in this module use Tailwind CSS, a utility-first CSS framework.
  See the [Tailwind CSS documentation](https://tailwindcss.com) to learn how to
  customize the generated components in this module.

  Icons are provided by [heroicons](https://heroicons.com), using the
  [heroicons_elixir](https://github.com/mveytsman/heroicons_elixir) project.
  """
  use Phoenix.Component

  defdelegate zflash(assigns), to: XdemoBaseWeb.CoreComponents, as: :flash

  defdelegate flash(assigns), to: XdemoBaseWeb.CoreComponents

end
