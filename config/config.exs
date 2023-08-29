# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :example_16x_app, Example16xAppWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: Example16xAppWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Example16xApp.PubSub,
  live_view: [signing_salt: "5UuENYOR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, :format_encoders, "json-api": Jason

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

config :ja_serializer,
  key_format: :underscored,
  # This ensures that singleton_resources surface their json:api
  # resource type as plural
  pluralize_types: true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
