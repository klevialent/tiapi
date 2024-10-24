defmodule Client.Application do
  use Application

  @impl true
  def start(_type, _args) do
    Supervisor.start_link([Tiapi.Channel], [strategy: :one_for_one, name: Client.Supervisor])
  end
end
