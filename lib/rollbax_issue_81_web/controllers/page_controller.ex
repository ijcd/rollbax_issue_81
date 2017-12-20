defmodule RollbaxIssue81Web.PageController do
  use RollbaxIssue81Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def crash(conn, _params) do
  	1/0
  end
end
