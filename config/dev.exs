import Config

# ----- XDEMO_BASE

config :xdemo_base, XdemoBaseWeb.Endpoint,
  http: [port: 4040],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:xdemo_base, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:xdemo_base, ~w(--watch)]}
  ]

config :xdemo_base, XdemoBaseWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/xdemo_base_web/(live|views)/.*(ex)$",
      ~r"lib/xdemo_base_web/templates/.*(eex)$"
    ]
  ]

# ----- XDEMO_MILLIGRAM

config :xdemo_milligram, XdemoMilligramWeb.Endpoint,
  http: [port: 4041],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:xdemo_milligram, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:xdemo_milligram, ~w(--watch)]}
  ]

config :xdemo_milligram, XdemoMilligramWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/xdemo_milligram_web/(live|views)/.*(ex)$",
      ~r"lib/xdemo_milligram_web/templates/.*(eex)$"
    ]
  ]

# ----- XDEMO_TAILWIND3

config :xdemo_tailwind3, XdemoTailwind3Web.Endpoint,
  http: [port: 4042],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:xdemo_tailwind3, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:xdemo_tailwind3, ~w(--watch)]}
  ]

config :xdemo_tailwind3, XdemoTailwind3Web.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/xdemo_tailwind3_web/(live|views)/.*(ex)$",
      ~r"lib/xdemo_tailwind3_web/templates/.*(eex)$"
    ]
  ]

# ----- MISC

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :plug_init_mode, :runtime

config :phoenix, :stacktrace_depth, 20
