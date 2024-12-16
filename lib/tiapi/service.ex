defmodule Tiapi.Service do
  alias Tiapi.RequestsMap
  alias Tiapi.Channel
  alias Google.Protobuf.Timestamp

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

  @spec get_portfolio!() :: Tiapi.Proto.PortfolioResponse.t()
  @spec get_portfolio!(any()) :: Tiapi.Proto.PortfolioResponse.t()
  def get_portfolio!(account_id \\ @account_id) do
    request = %Tiapi.Proto.PortfolioRequest{
      account_id: to_string(account_id),
    }

    request!(request)
  end

  @spec get_instrument_by_uid!(String.t()) :: Tiapi.Proto.Instrument.t()
  def get_instrument_by_uid!(uid) when is_bitstring(uid) do
    request = %Tiapi.Proto.InstrumentRequest{
      id_type: :INSTRUMENT_ID_TYPE_UID,
      id: uid,
    }

    request!(request).instrument
  end

  @spec get_futures_margin_info!(String.t()) :: Tiapi.Proto.GetFuturesMarginResponse.t()
  def get_futures_margin_info!(uid) when is_bitstring(uid) do
    request = %Tiapi.Proto.GetFuturesMarginRequest{
      instrument_id: uid
    }

    request!(request)
  end

  @spec get_var_margin_operations!(DateTime.t(), DateTime.t()) :: Tiapi.Proto.GetOperationsByCursorResponse.t()
  @spec get_var_margin_operations!(DateTime.t(), DateTime.t(), any()) :: Tiapi.Proto.GetOperationsByCursorResponse.t()
  def get_var_margin_operations!(from, to, account_id \\ @account_id) do
    request = %Tiapi.Proto.GetOperationsByCursorRequest{
      account_id: account_id,
      operation_types: [
        :OPERATION_TYPE_ACCRUING_VARMARGIN,
        :OPERATION_TYPE_WRITING_OFF_VARMARGIN,
      ],
      from: %Timestamp{seconds: DateTime.to_unix(from)},
      to: %Timestamp{seconds: DateTime.to_unix(to)},
    }

    request!(request)
  end

  @spec get_trade_operations!(String.t(), DateTime.t(), DateTime.t()) :: Tiapi.Proto.GetOperationsByCursorResponse.t()
  @spec get_trade_operations!(String.t(), DateTime.t(), DateTime.t(), any()) :: Tiapi.Proto.GetOperationsByCursorResponse.t()
  def get_trade_operations!(instrument_uid, from, to, account_id \\ @account_id) do
    request = %Tiapi.Proto.GetOperationsByCursorRequest{
      account_id: account_id,
      instrument_id: instrument_uid,
      operation_types: [
        :OPERATION_TYPE_BUY,
        :OPERATION_TYPE_SELL,
      ],
      state: :OPERATION_STATE_EXECUTED,
      from: %Timestamp{seconds: DateTime.to_unix(from)},
      to: %Timestamp{seconds: DateTime.to_unix(to)},
    }

    request!(request)
  end
end
