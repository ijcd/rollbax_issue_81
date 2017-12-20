# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rollbax_issue_81,
  ecto_repos: [RollbaxIssue81.Repo]

# Configures the endpoint
config :rollbax_issue_81, RollbaxIssue81Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SgmyzrY38X5ZR7rtUbZiHT6RBgDAjiKyMSmTgdj/mOgfJrOzZTenQBuffRx+c6EI",
  render_errors: [view: RollbaxIssue81Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RollbaxIssue81.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Do not print debug messages in production
config :logger, backends: [:console, Rollbax.Logger]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Add errors to Rollbar in production
config :logger, Rollbax.Logger,
  level: :error

# Rollbar: https://hexdocs.pm/rollbax
config :rollbax,
  access_token: "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  environment: "local"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
