import Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.

# ----- XDEMO_BASE

config :xdemo_base, XdemoBaseWeb.Endpoint,
  url: [host: "example.com", port: 8080],
  check_origin: false,
  cache_static_manifest: "priv/static/cache_manifest.json"

# ----- XDEMO_MILLIGRAM

config :xdemo_milligram, XdemoMilligramWeb.Endpoint,
  url: [host: "example.com", port: 8081],
  check_origin: false,
  cache_static_manifest: "priv/static/cache_manifest.json"

# ----- XDEMO_MILLIGRAM

config :xdemo_tailwind3, XdemoTailwind3Web.Endpoint,
  url: [host: "example.com", port: 8082],
  check_origin: false,
  cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

