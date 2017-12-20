defmodule RollbaxIssue81Web.HealthController do
  use RollbaxIssue81Web, :controller

  # TODO: actually check various repos, etc.
  def index(conn, _params) do
    text(conn, "OK")
  end
end
