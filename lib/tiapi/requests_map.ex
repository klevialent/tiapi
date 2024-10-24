defmodule Tiapi.RequestsMap do
  alias Tiapi.Proto.OperationsService.Stub, as: Operations

  @requests %{
    Tiapi.Proto.PortfolioRequest => &Operations.get_portfolio/2
  }

  @spec get_request_func(struct()) :: fun()
  def get_request_func(request) when is_struct(request) do
    Map.get(@requests, request.__struct__)
  end

end
