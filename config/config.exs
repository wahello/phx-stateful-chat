# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view,
  ecto_repos: [LiveView.Repo]


# Configures the endpoint
config :live_view, LiveViewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SJKkelWPsVyL0GuoG6/nkYtSmPMt9KHas7XuKZrcivCA/2NkPZUvNAorrWZBwgpI",
  render_errors: [view: LiveViewWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveView.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "5EOxuNttBU6enNqRMHx422g6K5LE6n9FwvwTheabuDpNgOFStbbbvE/F9Lfggl02"
    # signing_salt: ""
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
