Application.ensure_all_started(:hound)

ExUnit.configure formatters: [ExUnit.CLIFormatter, ExUnitNotifier], exclude: [external: true]

ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(RollbaxIssue81.Repo, :manual)

