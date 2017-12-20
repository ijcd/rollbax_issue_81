defmodule RollbaxIssue81.Application do
  use Application
  use Supervisor

  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    # import Supervisor.Spec

    # Define workers and child supervisors to be supervised
    children = [
      # Start the Ecto repository
      supervisor(RollbaxIssue81.Repo, []),

      # Start the endpoint when the application starts
      supervisor(RollbaxIssue81Web.Endpoint, []),

      # Start the endpoint when the application starts
      worker(RollbaxIssue81Web.ExceptionDemo, []),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RollbaxIssue81.Supervisor]
    start_result = Supervisor.start_link(children, opts)

    # Run migrations on start
    # RollbaxIssue81.ReleaseTasks.migrate()
    
    start_result
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    RollbaxIssue81Web.Endpoint.config_change(changed, removed)
    :ok
  end  
end
