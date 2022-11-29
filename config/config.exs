import Config

config :xcomponents,
  env: Mix.env()

# ----- XDEMO_BASE

config :xdemo_base, XdemoBaseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4GI1s5NnxDzI+Le2lVANn7DEDuC0KYYIOrBlbzMdEkuW0GoO92Hs8bUDEcZa20mM",
  render_errors: [view: XdemoBaseWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: XdemoBase.PubSub,
  live_view: [signing_salt: "rRioLeCG"]

# ----- XDEMO_MILLIGRAM

config :xdemo_milligram, XdemoMilligramWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bzu5s+45Yzl+rl59gfF+ej+vdcHj4pLGfTvdIwW1X06ZR00cIVbo9teXpdIhuhWn",
  render_errors: [view: XdemoMilligramWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: XdemoMilligram.PubSub,
  live_view: [signing_salt: "nxJkew8n"]

# ----- XDEMO_TAILWIND3

config :xdemo_tailwind3, XdemoTailwind3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JEOaYOnSgoTz1+r0yMPV/7VVWqJNe2HECZIKNy0bALwTZvtf/xDJzUWXNgTP2BJR",
  render_errors: [view: XdemoTailwind3Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: XdemoTailwind3.PubSub,
  live_view: [signing_salt: "ZjpUwCFP"]

# ----- ESBUILD

config :esbuild,
  version: "0.14.29",
  xdemo_base: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/xdemo_base/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ],
  xdemo_milligram: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/xdemo_milligram/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ],
  xdemo_tailwind3: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/xdemo_tailwind3/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# ----- TAILWIND

config :tailwind,
  version: "3.0.24",
  xdemo_base: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../apps/xdemo_base/assets", __DIR__)
  ],
  xdemo_milligram: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../apps/xdemo_milligram/assets", __DIR__)
  ],
  xdemo_tailwind3: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../apps/xdemo_tailwind3/assets", __DIR__)
  ]

# ----- MISC

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
