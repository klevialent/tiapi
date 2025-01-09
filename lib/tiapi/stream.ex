defmodule Tiapi.Stream do
  alias Tiapi.Service

  @account_id Application.compile_env(:tiapi, :account_id)

  @spec trades!() :: struct()
  @spec trades!(integer()) :: struct()
  def trades!(ping_delay \\ 5000) do
    request = %Tiapi.Proto.TradesStreamRequest{
      accounts: [
        @account_id,
      ],
      ping_delay_ms: ping_delay,
    }

    Service.request!(request)
  end

end
