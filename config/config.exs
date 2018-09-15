# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :deployment_spike,
  ecto_repos: [DeploymentSpike.Repo]

# Configures the endpoint
config :deployment_spike, DeploymentSpikeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5rr/6aRolBWl/zmedBls9m/o4fP2l3TVmdEKlnab51ZdMjG6zfnrRROrTZpj3+Gq",
  render_errors: [view: DeploymentSpikeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DeploymentSpike.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
