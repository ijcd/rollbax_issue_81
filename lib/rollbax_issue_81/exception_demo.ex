defmodule RollbaxIssue81Web.ExceptionDemo do
  use GenServer

  def start_link() do
	{:ok, _} = GenServer.start_link(__MODULE__, :ok, name: ExceptionDemo)
  end

  def init(state) do
    IO.puts "Starting ExceptionDemo"
    Process.send_after(self(), :bang, 6_000)

    {:ok, state}
  end

  def handle_info(:bang, state) do
  	IO.inspect(state, label: "STATE")
    1/0
  end
end