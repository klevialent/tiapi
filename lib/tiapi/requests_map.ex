defmodule Tiapi.RequestsMap do
  alias Tiapi.Proto.InstrumentsService.Stub, as: Instruments
  alias Tiapi.Proto.OperationsService.Stub, as: Operations
  alias Tiapi.Proto.OrdersStreamService.Stub, as: OrdersStream

  @requests %{
    Tiapi.Proto.InstrumentRequest => &Instruments.get_instrument_by/2,
    Tiapi.Proto.GetFuturesMarginRequest => &Instruments.get_futures_margin/2,
    Tiapi.Proto.PortfolioRequest => &Operations.get_portfolio/2,
    Tiapi.Proto.GetOperationsByCursorRequest => &Operations.get_operations_by_cursor/2,
    Tiapi.Proto.TradesStreamRequest => &OrdersStream.trades_stream/2,
  }

  @spec get_request_func(struct()) :: fun()
  def get_request_func(request) when is_struct(request) do
    Map.get(@requests, request.__struct__)
  end

end
