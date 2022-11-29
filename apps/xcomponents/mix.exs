defmodule Xcomponents.MixProject do
  use Mix.Project

  def project do
    [
      app: :xcomponents,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:phoenix, "~> 1.7.0-rc.0", override: true, runtime: false},
      {:phoenix_live_view, "~> 0.18"},
    ]
  end
end
