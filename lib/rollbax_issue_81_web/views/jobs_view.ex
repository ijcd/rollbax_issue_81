defmodule RollbaxIssue81Web.JobsView do
  use RollbaxIssue81Web, :view

  def maybe_link(name, nil), do: "-"
  def maybe_link(name, url), do: link(name, to: url)

  def format_log(log), do: Enum.join(log, "\n") |> text_to_html()
end
