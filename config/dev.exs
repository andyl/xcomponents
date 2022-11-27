import Config

# ----- XcDemoBase -----

config :xc_demo_base, XcDemoBase.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "q6wHNXvJLscA4AgIi5MlRbOHcWLdpFbyOSphd7HgJGwBLN8kB7fuqlmzdhyfpGkJ",
  watchers: [
    esbuild: {Esbuild, :install_and_run, [:default, ~w(--sourcemap=inline --watch)]},
    tailwind: {Tailwind, :install_and_run, [:default, ~w(--watch)]}
  ]

# Watch static and templates for browser reloading.
config :xc_demo_base, XcDemoBase.Endpoint,
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/xc_demo_base/(live|views)/.*(ex)$",
      ~r"lib/xc_demo_base/templates/.*(eex)$"
    ]
  ]

# ----- Misc -----

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :plug_init_mode, :runtime

config :phoenix, :stacktrace_depth, 20
