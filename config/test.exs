import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :example_16x_app, Example16xAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "juuPKJwn0otmt2o9lVKRXi+QUepGavMiiYau3xOcUy6arnD7rwXq2qHSrpw8098W",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
