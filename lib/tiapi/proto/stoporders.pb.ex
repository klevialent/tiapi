defmodule Tiapi.Proto.StopOrderDirection do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STOP_ORDER_DIRECTION_UNSPECIFIED, 0
  field :STOP_ORDER_DIRECTION_BUY, 1
  field :STOP_ORDER_DIRECTION_SELL, 2
end

defmodule Tiapi.Proto.StopOrderExpirationType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STOP_ORDER_EXPIRATION_TYPE_UNSPECIFIED, 0
  field :STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_CANCEL, 1
  field :STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_DATE, 2
end

defmodule Tiapi.Proto.StopOrderType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STOP_ORDER_TYPE_UNSPECIFIED, 0
  field :STOP_ORDER_TYPE_TAKE_PROFIT, 1
  field :STOP_ORDER_TYPE_STOP_LOSS, 2
  field :STOP_ORDER_TYPE_STOP_LIMIT, 3
end

defmodule Tiapi.Proto.StopOrderStatusOption do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STOP_ORDER_STATUS_UNSPECIFIED, 0
  field :STOP_ORDER_STATUS_ALL, 1
  field :STOP_ORDER_STATUS_ACTIVE, 2
  field :STOP_ORDER_STATUS_EXECUTED, 3
  field :STOP_ORDER_STATUS_CANCELED, 4
  field :STOP_ORDER_STATUS_EXPIRED, 5
end

defmodule Tiapi.Proto.ExchangeOrderType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EXCHANGE_ORDER_TYPE_UNSPECIFIED, 0
  field :EXCHANGE_ORDER_TYPE_MARKET, 1
  field :EXCHANGE_ORDER_TYPE_LIMIT, 2
end

defmodule Tiapi.Proto.TakeProfitType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TAKE_PROFIT_TYPE_UNSPECIFIED, 0
  field :TAKE_PROFIT_TYPE_REGULAR, 1
  field :TAKE_PROFIT_TYPE_TRAILING, 2
end

defmodule Tiapi.Proto.TrailingValueType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRAILING_VALUE_UNSPECIFIED, 0
  field :TRAILING_VALUE_ABSOLUTE, 1
  field :TRAILING_VALUE_RELATIVE, 2
end

defmodule Tiapi.Proto.TrailingStopStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRAILING_STOP_UNSPECIFIED, 0
  field :TRAILING_STOP_ACTIVE, 1
  field :TRAILING_STOP_ACTIVATED, 2
end

defmodule Tiapi.Proto.PostStopOrderRequest.TrailingData do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :indent, 1, type: Tiapi.Proto.Quotation

  field :indent_type, 2,
    type: Tiapi.Proto.TrailingValueType,
    json_name: "indentType",
    enum: true

  field :spread, 3, type: Tiapi.Proto.Quotation

  field :spread_type, 4,
    type: Tiapi.Proto.TrailingValueType,
    json_name: "spreadType",
    enum: true
end

defmodule Tiapi.Proto.PostStopOrderRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :quantity, 2, type: :int64, deprecated: false

  field :price, 3,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation

  field :stop_price, 4,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation,
    json_name: "stopPrice"

  field :direction, 5,
    type: Tiapi.Proto.StopOrderDirection,
    enum: true,
    deprecated: false

  field :account_id, 6, type: :string, json_name: "accountId", deprecated: false

  field :expiration_type, 7,
    type: Tiapi.Proto.StopOrderExpirationType,
    json_name: "expirationType",
    enum: true,
    deprecated: false

  field :stop_order_type, 8,
    type: Tiapi.Proto.StopOrderType,
    json_name: "stopOrderType",
    enum: true,
    deprecated: false

  field :expire_date, 9,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "expireDate"

  field :instrument_id, 10, type: :string, json_name: "instrumentId", deprecated: false

  field :exchange_order_type, 11,
    type: Tiapi.Proto.ExchangeOrderType,
    json_name: "exchangeOrderType",
    enum: true

  field :take_profit_type, 12,
    type: Tiapi.Proto.TakeProfitType,
    json_name: "takeProfitType",
    enum: true

  field :trailing_data, 13,
    type: Tiapi.Proto.PostStopOrderRequest.TrailingData,
    json_name: "trailingData"

  field :price_type, 14,
    type: Tiapi.Proto.PriceType,
    json_name: "priceType",
    enum: true

  field :order_id, 15, type: :string, json_name: "orderId", deprecated: false
end

defmodule Tiapi.Proto.PostStopOrderResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stop_order_id, 1, type: :string, json_name: "stopOrderId"
  field :order_request_id, 2, type: :string, json_name: "orderRequestId"

  field :response_metadata, 254,
    type: Tiapi.Proto.ResponseMetadata,
    json_name: "responseMetadata"
end

defmodule Tiapi.Proto.GetStopOrdersRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false

  field :status, 2,
    type: Tiapi.Proto.StopOrderStatusOption,
    enum: true

  field :from, 3, type: Google.Protobuf.Timestamp
  field :to, 4, type: Google.Protobuf.Timestamp
end

defmodule Tiapi.Proto.GetStopOrdersResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stop_orders, 1,
    repeated: true,
    type: Tiapi.Proto.StopOrder,
    json_name: "stopOrders"
end

defmodule Tiapi.Proto.CancelStopOrderRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
  field :stop_order_id, 2, type: :string, json_name: "stopOrderId", deprecated: false
end

defmodule Tiapi.Proto.CancelStopOrderResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
end

defmodule Tiapi.Proto.StopOrder.TrailingData do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :indent, 1, type: Tiapi.Proto.Quotation

  field :indent_type, 2,
    type: Tiapi.Proto.TrailingValueType,
    json_name: "indentType",
    enum: true

  field :spread, 3, type: Tiapi.Proto.Quotation

  field :spread_type, 4,
    type: Tiapi.Proto.TrailingValueType,
    json_name: "spreadType",
    enum: true

  field :status, 5,
    type: Tiapi.Proto.TrailingStopStatus,
    enum: true

  field :price, 7, type: Tiapi.Proto.Quotation
  field :extr, 8, type: Tiapi.Proto.Quotation
end

defmodule Tiapi.Proto.StopOrder do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stop_order_id, 1, type: :string, json_name: "stopOrderId"
  field :lots_requested, 2, type: :int64, json_name: "lotsRequested"
  field :figi, 3, type: :string

  field :direction, 4,
    type: Tiapi.Proto.StopOrderDirection,
    enum: true

  field :currency, 5, type: :string

  field :order_type, 6,
    type: Tiapi.Proto.StopOrderType,
    json_name: "orderType",
    enum: true

  field :create_date, 7, type: Google.Protobuf.Timestamp, json_name: "createDate"
  field :activation_date_time, 8, type: Google.Protobuf.Timestamp, json_name: "activationDateTime"
  field :expiration_time, 9, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :price, 10, type: Tiapi.Proto.MoneyValue

  field :stop_price, 11,
    type: Tiapi.Proto.MoneyValue,
    json_name: "stopPrice"

  field :instrument_uid, 12, type: :string, json_name: "instrumentUid"

  field :take_profit_type, 13,
    type: Tiapi.Proto.TakeProfitType,
    json_name: "takeProfitType",
    enum: true

  field :trailing_data, 14,
    type: Tiapi.Proto.StopOrder.TrailingData,
    json_name: "trailingData"

  field :status, 15,
    type: Tiapi.Proto.StopOrderStatusOption,
    enum: true

  field :exchange_order_type, 16,
    type: Tiapi.Proto.ExchangeOrderType,
    json_name: "exchangeOrderType",
    enum: true

  field :exchange_order_id, 17, proto3_optional: true, type: :string, json_name: "exchangeOrderId"
end

defmodule Tiapi.Proto.StopOrdersService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.StopOrdersService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :PostStopOrder,
      Tiapi.Proto.PostStopOrderRequest,
      Tiapi.Proto.PostStopOrderResponse

  rpc :GetStopOrders,
      Tiapi.Proto.GetStopOrdersRequest,
      Tiapi.Proto.GetStopOrdersResponse

  rpc :CancelStopOrder,
      Tiapi.Proto.CancelStopOrderRequest,
      Tiapi.Proto.CancelStopOrderResponse
end

defmodule Tiapi.Proto.StopOrdersService.Stub do
  use GRPC.Stub,
    service: Tiapi.Proto.StopOrdersService.Service
end
