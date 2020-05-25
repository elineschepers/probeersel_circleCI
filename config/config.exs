# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :probeersel,
  ecto_repos: [Probeersel.Repo]

config :probeersel_web,
  ecto_repos: [Probeersel.Repo],
  generators: [context_app: :probeersel]

# Configures the endpoint
config :probeersel_web, ProbeerselWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uGvWGaBr/YyyV4TOBfyEH+RPmBl+uHVwMOGsRuHMw1gMgkhc1ujr6vKNoUnmJRPi",
  render_errors: [view: ProbeerselWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProbeerselWeb.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "DMPNnp7a"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
