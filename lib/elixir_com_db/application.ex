defmodule ElixirComDb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ElixirComDbWeb.Telemetry,
      # Start the Ecto repository
      ElixirComDb.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ElixirComDb.PubSub},
      # Start Finch
      {Finch, name: ElixirComDb.Finch},
      # Start the Endpoint (http/https)
      ElixirComDbWeb.Endpoint
      # Start a worker by calling: ElixirComDb.Worker.start_link(arg)
      # {ElixirComDb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirComDb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirComDbWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
