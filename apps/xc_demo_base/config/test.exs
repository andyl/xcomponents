import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :xc_demo_base, XcDemoBase.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Q0cWYZZaRJ2f1id/Ey+bl1h3sQDgaAgoei8Y+mk5qbIpcEzu9SuitqiQJK54haqw",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
