defmodule Example16xApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Example16xAppWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Example16xApp.PubSub},
      # Start the Endpoint (http/https)
      Example16xAppWeb.Endpoint
      # Start a worker by calling: Example16xApp.Worker.start_link(arg)
      # {Example16xApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Example16xApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Example16xAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
