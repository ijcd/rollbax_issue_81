defmodule RollbaxIssue81Web.Router do
  use RollbaxIssue81Web, :router
  use Plug.ErrorHandler

  defp handle_errors(conn, %{kind: kind, reason: reason, stack: stacktrace}) do
    Rollbax.report(kind, reason, stacktrace)
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", RollbaxIssue81Web do
    pipe_through [:browser]

    get "/", PageController, :index
    get "/crash", PageController, :crash
  end
end
