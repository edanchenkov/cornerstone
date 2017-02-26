# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cornerstone,
  ecto_repos: [Cornerstone.Repo]

# Configures the endpoint
config :cornerstone, Cornerstone.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n3qi6uO3KNOQ4nJDqbuKPu++a4jhjUuW+e50sLavy5fBqfXUvT0VqSYZ2NDH1fXW",
  render_errors: [view: Cornerstone.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cornerstone.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
