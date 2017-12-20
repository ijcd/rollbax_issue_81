use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rollbax_issue_81, RollbaxIssue81Web.Endpoint,
  http: [port: 4001],
  server: System.get_env("TEST_SERVER") == "true"

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :rollbax_issue_81, RollbaxIssue81.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rollbax_issue_81_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
