import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :xdemo_milligram, XdemoMilligramWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "m0kZAAPAYOQkyrn0G6beEqPtsKLrkGtX6CS48c1E4fCdbQEIrlN1nPYJ2rEgk+0s",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
