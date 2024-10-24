defmodule Tiapi.Service do
  alias Tiapi.RequestsMap
  alias Tiapi.Channel

  @account_id Application.compile_env(:tiapi, :account_id)

  @spec request(struct()) :: {:ok, struct()} | {:error, any()}
  def request(request) when is_struct(request) do
    RequestsMap.get_request_func(request).(Channel.get_channel, request)
  end

  @spec request!(struct()) :: struct()
  def request!(request) when is_struct(request) do
    {:ok, response} = request(request)

    response
  end

  @spec get_portfolio!() :: struct()
  @spec get_portfolio!(any()) :: struct()
  def get_portfolio!(account_id \\ @account_id) do
    request = %Tiapi.Proto.PortfolioRequest{
      account_id: to_string(account_id),
    }

    request!(request)
  end

end
