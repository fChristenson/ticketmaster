# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ticketmaster,
  ecto_repos: [Ticketmaster.Repo]

# Configures the endpoint
config :ticketmaster, Ticketmaster.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YJbqhJxPaynDeWleoMlIZQ1IRMF9Azkt8+7dQqwN5Bbzc/T8K7jSV75mxGlRT5nK",
  render_errors: [view: Ticketmaster.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ticketmaster.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
