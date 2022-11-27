import Config

# ----- XC_DEMO_BASE -----

config :xc_demo_base,
  generators: [context_app: :xcomponents]

config :xc_demo_base, XcDemoBase.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [html: XcDemoBase.ErrorHTML, json: XcDemoBase.ErrorJSON],
    layout: false
  ],
  live_view: [signing_salt: "tkB9W4fg"]

# ----- ESBUILD -----

config :esbuild,
  version: "0.14.41",
  default: [
    args:
      ~w(js/app.js --bundle --target=es2017 --outdir=../priv/static/assets --external:/fonts/* --external:/images/*),
    cd: Path.expand("../apps/xc_demo_base/assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# ----- TAILWIND -----

config :tailwind,
  version: "3.1.8",
  default: [
    args: ~w(
      --config=tailwind.config.js
      --input=css/app.css
      --output=../priv/static/assets/app.css
    ),
    cd: Path.expand("../apps/xc_demo_base/assets", __DIR__)
  ]

# ----- MISC -----

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
