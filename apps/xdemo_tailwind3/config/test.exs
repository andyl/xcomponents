import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :xdemo_tailwind3, XdemoTailwind3Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "xCaGbIsVtadlkZVL2wvmjkFwMf/KoUBGIQrAFV/A6NUAJ4Z5F5xBiithgOW/8/px",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
