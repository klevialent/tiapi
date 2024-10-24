defmodule Tiapi.Proto.OrderDirection do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ORDER_DIRECTION_UNSPECIFIED, 0
  field :ORDER_DIRECTION_BUY, 1
  field :ORDER_DIRECTION_SELL, 2
end

defmodule Tiapi.Proto.OrderType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ORDER_TYPE_UNSPECIFIED, 0
  field :ORDER_TYPE_LIMIT, 1
  field :ORDER_TYPE_MARKET, 2
  field :ORDER_TYPE_BESTPRICE, 3
end

defmodule Tiapi.Proto.OrderExecutionReportStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EXECUTION_REPORT_STATUS_UNSPECIFIED, 0
  field :EXECUTION_REPORT_STATUS_FILL, 1
  field :EXECUTION_REPORT_STATUS_REJECTED, 2
  field :EXECUTION_REPORT_STATUS_CANCELLED, 3
  field :EXECUTION_REPORT_STATUS_NEW, 4
  field :EXECUTION_REPORT_STATUS_PARTIALLYFILL, 5
end

defmodule Tiapi.Proto.TimeInForceType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TIME_IN_FORCE_UNSPECIFIED, 0
  field :TIME_IN_FORCE_DAY, 1
  field :TIME_IN_FORCE_FILL_AND_KILL, 2
  field :TIME_IN_FORCE_FILL_OR_KILL, 3
end

defmodule Tiapi.Proto.OrderIdType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ORDER_ID_TYPE_UNSPECIFIED, 0
  field :ORDER_ID_TYPE_EXCHANGE, 1
  field :ORDER_ID_TYPE_REQUEST, 2
end

defmodule Tiapi.Proto.OrderStateStreamResponse.MarkerType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MARKER_UNKNOWN, 0
  field :MARKER_BROKER, 1
  field :MARKER_CHAT, 2
  field :MARKER_PAPER, 3
  field :MARKER_MARGIN, 4
  field :MARKER_TKBNM, 5
  field :MARKER_SHORT, 6
  field :MARKER_SPECMM, 7
  field :MARKER_PO, 8
end

defmodule Tiapi.Proto.OrderStateStreamResponse.StatusCauseInfo do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CAUSE_UNSPECIFIED, 0
  field :CAUSE_CANCELLED_BY_CLIENT, 15
  field :CAUSE_CANCELLED_BY_EXCHANGE, 1
  field :CAUSE_CANCELLED_NOT_ENOUGH_POSITION, 2
  field :CAUSE_CANCELLED_BY_CLIENT_BLOCK, 3
  field :CAUSE_REJECTED_BY_BROKER, 4
  field :CAUSE_REJECTED_BY_EXCHANGE, 5
  field :CAUSE_CANCELLED_BY_BROKER, 6
end

defmodule Tiapi.Proto.TradesStreamRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: :string
  field :ping_delay_ms, 15, proto3_optional: true, type: :int32, json_name: "pingDelayMs"
end

defmodule Tiapi.Proto.TradesStreamResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :payload, 0

  field :order_trades, 1,
    type: Tiapi.Proto.OrderTrades,
    json_name: "orderTrades",
    oneof: 0

  field :ping, 2, type: Tiapi.Proto.Ping, oneof: 0

  field :subscription, 3,
    type: Tiapi.Proto.SubscriptionResponse,
    oneof: 0
end

defmodule Tiapi.Proto.OrderTrades do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :order_id, 1, type: :string, json_name: "orderId"
  field :created_at, 2, type: Google.Protobuf.Timestamp, json_name: "createdAt"

  field :direction, 3,
    type: Tiapi.Proto.OrderDirection,
    enum: true

  field :figi, 4, type: :string

  field :trades, 5,
    repeated: true,
    type: Tiapi.Proto.OrderTrade

  field :account_id, 6, type: :string, json_name: "accountId"
  field :instrument_uid, 7, type: :string, json_name: "instrumentUid"
end

defmodule Tiapi.Proto.OrderTrade do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :date_time, 1, type: Google.Protobuf.Timestamp, json_name: "dateTime"
  field :price, 2, type: Tiapi.Proto.Quotation
  field :quantity, 3, type: :int64
  field :trade_id, 4, type: :string, json_name: "tradeId"
end

defmodule Tiapi.Proto.PostOrderRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :quantity, 2, type: :int64, deprecated: false

  field :price, 3,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation

  field :direction, 4,
    type: Tiapi.Proto.OrderDirection,
    enum: true,
    deprecated: false

  field :account_id, 5, type: :string, json_name: "accountId", deprecated: false

  field :order_type, 6,
    type: Tiapi.Proto.OrderType,
    json_name: "orderType",
    enum: true,
    deprecated: false

  field :order_id, 7, type: :string, json_name: "orderId", deprecated: false
  field :instrument_id, 8, type: :string, json_name: "instrumentId"

  field :time_in_force, 9,
    type: Tiapi.Proto.TimeInForceType,
    json_name: "timeInForce",
    enum: true

  field :price_type, 10,
    type: Tiapi.Proto.PriceType,
    json_name: "priceType",
    enum: true
end

defmodule Tiapi.Proto.PostOrderResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :order_id, 1, type: :string, json_name: "orderId"

  field :execution_report_status, 2,
    type: Tiapi.Proto.OrderExecutionReportStatus,
    json_name: "executionReportStatus",
    enum: true

  field :lots_requested, 3, type: :int64, json_name: "lotsRequested"
  field :lots_executed, 4, type: :int64, json_name: "lotsExecuted"

  field :initial_order_price, 5,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialOrderPrice"

  field :executed_order_price, 6,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedOrderPrice"

  field :total_order_amount, 7,
    type: Tiapi.Proto.MoneyValue,
    json_name: "totalOrderAmount"

  field :initial_commission, 8,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialCommission"

  field :executed_commission, 9,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedCommission"

  field :aci_value, 10,
    type: Tiapi.Proto.MoneyValue,
    json_name: "aciValue"

  field :figi, 11, type: :string

  field :direction, 12,
    type: Tiapi.Proto.OrderDirection,
    enum: true

  field :initial_security_price, 13,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialSecurityPrice"

  field :order_type, 14,
    type: Tiapi.Proto.OrderType,
    json_name: "orderType",
    enum: true

  field :message, 15, type: :string

  field :initial_order_price_pt, 16,
    type: Tiapi.Proto.Quotation,
    json_name: "initialOrderPricePt"

  field :instrument_uid, 17, type: :string, json_name: "instrumentUid"
  field :order_request_id, 20, type: :string, json_name: "orderRequestId"

  field :response_metadata, 254,
    type: Tiapi.Proto.ResponseMetadata,
    json_name: "responseMetadata"
end

defmodule Tiapi.Proto.PostOrderAsyncRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 1, type: :string, json_name: "instrumentId", deprecated: false
  field :quantity, 2, type: :int64, deprecated: false

  field :price, 3,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation

  field :direction, 4,
    type: Tiapi.Proto.OrderDirection,
    enum: true,
    deprecated: false

  field :account_id, 5, type: :string, json_name: "accountId", deprecated: false

  field :order_type, 6,
    type: Tiapi.Proto.OrderType,
    json_name: "orderType",
    enum: true,
    deprecated: false

  field :order_id, 7, type: :string, json_name: "orderId", deprecated: false

  field :time_in_force, 8,
    proto3_optional: true,
    type: Tiapi.Proto.TimeInForceType,
    json_name: "timeInForce",
    enum: true

  field :price_type, 9,
    proto3_optional: true,
    type: Tiapi.Proto.PriceType,
    json_name: "priceType",
    enum: true
end

defmodule Tiapi.Proto.PostOrderAsyncResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :order_request_id, 1, type: :string, json_name: "orderRequestId", deprecated: false

  field :execution_report_status, 2,
    type: Tiapi.Proto.OrderExecutionReportStatus,
    json_name: "executionReportStatus",
    enum: true,
    deprecated: false

  field :trade_intent_id, 3, proto3_optional: true, type: :string, json_name: "tradeIntentId"
end

defmodule Tiapi.Proto.CancelOrderRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
  field :order_id, 2, type: :string, json_name: "orderId", deprecated: false

  field :order_id_type, 3,
    proto3_optional: true,
    type: Tiapi.Proto.OrderIdType,
    json_name: "orderIdType",
    enum: true
end

defmodule Tiapi.Proto.CancelOrderResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp

  field :response_metadata, 254,
    type: Tiapi.Proto.ResponseMetadata,
    json_name: "responseMetadata"
end

defmodule Tiapi.Proto.GetOrderStateRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
  field :order_id, 2, type: :string, json_name: "orderId", deprecated: false

  field :price_type, 3,
    type: Tiapi.Proto.PriceType,
    json_name: "priceType",
    enum: true

  field :order_id_type, 4,
    proto3_optional: true,
    type: Tiapi.Proto.OrderIdType,
    json_name: "orderIdType",
    enum: true
end

defmodule Tiapi.Proto.GetOrdersRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
end

defmodule Tiapi.Proto.GetOrdersResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :orders, 1,
    repeated: true,
    type: Tiapi.Proto.OrderState
end

defmodule Tiapi.Proto.OrderState do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :order_id, 1, type: :string, json_name: "orderId"

  field :execution_report_status, 2,
    type: Tiapi.Proto.OrderExecutionReportStatus,
    json_name: "executionReportStatus",
    enum: true

  field :lots_requested, 3, type: :int64, json_name: "lotsRequested"
  field :lots_executed, 4, type: :int64, json_name: "lotsExecuted"

  field :initial_order_price, 5,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialOrderPrice"

  field :executed_order_price, 6,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedOrderPrice"

  field :total_order_amount, 7,
    type: Tiapi.Proto.MoneyValue,
    json_name: "totalOrderAmount"

  field :average_position_price, 8,
    type: Tiapi.Proto.MoneyValue,
    json_name: "averagePositionPrice"

  field :initial_commission, 9,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialCommission"

  field :executed_commission, 10,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedCommission"

  field :figi, 11, type: :string

  field :direction, 12,
    type: Tiapi.Proto.OrderDirection,
    enum: true

  field :initial_security_price, 13,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialSecurityPrice"

  field :stages, 14,
    repeated: true,
    type: Tiapi.Proto.OrderStage

  field :service_commission, 15,
    type: Tiapi.Proto.MoneyValue,
    json_name: "serviceCommission"

  field :currency, 16, type: :string

  field :order_type, 17,
    type: Tiapi.Proto.OrderType,
    json_name: "orderType",
    enum: true

  field :order_date, 18, type: Google.Protobuf.Timestamp, json_name: "orderDate"
  field :instrument_uid, 19, type: :string, json_name: "instrumentUid"
  field :order_request_id, 20, type: :string, json_name: "orderRequestId"
end

defmodule Tiapi.Proto.OrderStage do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :price, 1, type: Tiapi.Proto.MoneyValue
  field :quantity, 2, type: :int64
  field :trade_id, 3, type: :string, json_name: "tradeId"
  field :execution_time, 5, type: Google.Protobuf.Timestamp, json_name: "executionTime"
end

defmodule Tiapi.Proto.ReplaceOrderRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
  field :order_id, 6, type: :string, json_name: "orderId", deprecated: false
  field :idempotency_key, 7, type: :string, json_name: "idempotencyKey", deprecated: false
  field :quantity, 11, type: :int64, deprecated: false

  field :price, 12,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation

  field :price_type, 13,
    proto3_optional: true,
    type: Tiapi.Proto.PriceType,
    json_name: "priceType",
    enum: true
end

defmodule Tiapi.Proto.GetMaxLotsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
  field :instrument_id, 2, type: :string, json_name: "instrumentId", deprecated: false

  field :price, 3,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation
end

defmodule Tiapi.Proto.GetMaxLotsResponse.BuyLimitsView do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :buy_money_amount, 1,
    type: Tiapi.Proto.Quotation,
    json_name: "buyMoneyAmount"

  field :buy_max_lots, 2, type: :int64, json_name: "buyMaxLots"
  field :buy_max_market_lots, 3, type: :int64, json_name: "buyMaxMarketLots"
end

defmodule Tiapi.Proto.GetMaxLotsResponse.SellLimitsView do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sell_max_lots, 1, type: :int64, json_name: "sellMaxLots"
end

defmodule Tiapi.Proto.GetMaxLotsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :currency, 1, type: :string

  field :buy_limits, 2,
    type: Tiapi.Proto.GetMaxLotsResponse.BuyLimitsView,
    json_name: "buyLimits"

  field :buy_margin_limits, 3,
    type: Tiapi.Proto.GetMaxLotsResponse.BuyLimitsView,
    json_name: "buyMarginLimits"

  field :sell_limits, 4,
    type: Tiapi.Proto.GetMaxLotsResponse.SellLimitsView,
    json_name: "sellLimits"

  field :sell_margin_limits, 5,
    type: Tiapi.Proto.GetMaxLotsResponse.SellLimitsView,
    json_name: "sellMarginLimits"
end

defmodule Tiapi.Proto.GetOrderPriceRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId"
  field :instrument_id, 2, type: :string, json_name: "instrumentId"
  field :price, 3, type: Tiapi.Proto.Quotation

  field :direction, 12,
    type: Tiapi.Proto.OrderDirection,
    enum: true

  field :quantity, 13, type: :int64
end

defmodule Tiapi.Proto.GetOrderPriceResponse.ExtraBond do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :aci_value, 2,
    type: Tiapi.Proto.MoneyValue,
    json_name: "aciValue"

  field :nominal_conversion_rate, 3,
    type: Tiapi.Proto.Quotation,
    json_name: "nominalConversionRate"
end

defmodule Tiapi.Proto.GetOrderPriceResponse.ExtraFuture do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :initial_margin, 2,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialMargin"
end

defmodule Tiapi.Proto.GetOrderPriceResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :instrument_extra, 0

  field :total_order_amount, 1,
    type: Tiapi.Proto.MoneyValue,
    json_name: "totalOrderAmount"

  field :initial_order_amount, 5,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialOrderAmount"

  field :lots_requested, 3, type: :int64, json_name: "lotsRequested"

  field :executed_commission, 7,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedCommission"

  field :executed_commission_rub, 8,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedCommissionRub"

  field :service_commission, 9,
    type: Tiapi.Proto.MoneyValue,
    json_name: "serviceCommission"

  field :deal_commission, 10,
    type: Tiapi.Proto.MoneyValue,
    json_name: "dealCommission"

  field :extra_bond, 12,
    type: Tiapi.Proto.GetOrderPriceResponse.ExtraBond,
    json_name: "extraBond",
    oneof: 0

  field :extra_future, 13,
    type: Tiapi.Proto.GetOrderPriceResponse.ExtraFuture,
    json_name: "extraFuture",
    oneof: 0
end

defmodule Tiapi.Proto.OrderStateStreamRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: :string
  field :ping_delay_ms, 15, proto3_optional: true, type: :int32, json_name: "pingDelayMs"
end

defmodule Tiapi.Proto.SubscriptionResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 1, type: :string, json_name: "trackingId"

  field :status, 2,
    type: Tiapi.Proto.ResultSubscriptionStatus,
    enum: true

  field :stream_id, 4, type: :string, json_name: "streamId"
  field :accounts, 5, repeated: true, type: :string

  field :error, 7,
    proto3_optional: true,
    type: Tiapi.Proto.ErrorDetail
end

defmodule Tiapi.Proto.OrderStateStreamResponse.OrderState do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :order_id, 1, type: :string, json_name: "orderId"
  field :order_request_id, 2, proto3_optional: true, type: :string, json_name: "orderRequestId"
  field :client_code, 3, type: :string, json_name: "clientCode"
  field :created_at, 4, type: Google.Protobuf.Timestamp, json_name: "createdAt"

  field :execution_report_status, 5,
    type: Tiapi.Proto.OrderExecutionReportStatus,
    json_name: "executionReportStatus",
    enum: true

  field :status_info, 6,
    proto3_optional: true,
    type:
      Tiapi.Proto.OrderStateStreamResponse.StatusCauseInfo,
    json_name: "statusInfo",
    enum: true

  field :ticker, 7, type: :string
  field :class_code, 8, type: :string, json_name: "classCode"
  field :lot_size, 9, type: :int32, json_name: "lotSize"

  field :direction, 10,
    type: Tiapi.Proto.OrderDirection,
    enum: true

  field :time_in_force, 11,
    type: Tiapi.Proto.TimeInForceType,
    json_name: "timeInForce",
    enum: true

  field :order_type, 12,
    type: Tiapi.Proto.OrderType,
    json_name: "orderType",
    enum: true

  field :account_id, 13, type: :string, json_name: "accountId"

  field :initial_order_price, 22,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialOrderPrice"

  field :order_price, 23,
    type: Tiapi.Proto.MoneyValue,
    json_name: "orderPrice"

  field :amount, 24,
    proto3_optional: true,
    type: Tiapi.Proto.MoneyValue

  field :executed_order_price, 25,
    type: Tiapi.Proto.MoneyValue,
    json_name: "executedOrderPrice"

  field :currency, 26, type: :string
  field :lots_requested, 27, type: :int64, json_name: "lotsRequested"
  field :lots_executed, 28, type: :int64, json_name: "lotsExecuted"
  field :lots_left, 29, type: :int64, json_name: "lotsLeft"
  field :lots_cancelled, 30, type: :int64, json_name: "lotsCancelled"

  field :marker, 31,
    proto3_optional: true,
    type: Tiapi.Proto.OrderStateStreamResponse.MarkerType,
    enum: true

  field :trades, 33,
    repeated: true,
    type: Tiapi.Proto.OrderTrade

  field :completion_time, 35, type: Google.Protobuf.Timestamp, json_name: "completionTime"
  field :exchange, 36, type: :string
  field :instrument_uid, 41, type: :string, json_name: "instrumentUid"
end

defmodule Tiapi.Proto.OrderStateStreamResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :payload, 0

  field :order_state, 1,
    type: Tiapi.Proto.OrderStateStreamResponse.OrderState,
    json_name: "orderState",
    oneof: 0

  field :ping, 2, type: Tiapi.Proto.Ping, oneof: 0

  field :subscription, 3,
    type: Tiapi.Proto.SubscriptionResponse,
    oneof: 0
end

defmodule Tiapi.Proto.OrdersStreamService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.OrdersStreamService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :TradesStream,
      Tiapi.Proto.TradesStreamRequest,
      stream(Tiapi.Proto.TradesStreamResponse)

  rpc :OrderStateStream,
      Tiapi.Proto.OrderStateStreamRequest,
      stream(Tiapi.Proto.OrderStateStreamResponse)
end

defmodule Tiapi.Proto.OrdersStreamService.Stub do
  use GRPC.Stub,
    service: Tiapi.Proto.OrdersStreamService.Service
end

defmodule Tiapi.Proto.OrdersService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.OrdersService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :PostOrder,
      Tiapi.Proto.PostOrderRequest,
      Tiapi.Proto.PostOrderResponse

  rpc :PostOrderAsync,
      Tiapi.Proto.PostOrderAsyncRequest,
      Tiapi.Proto.PostOrderAsyncResponse

  rpc :CancelOrder,
      Tiapi.Proto.CancelOrderRequest,
      Tiapi.Proto.CancelOrderResponse

  rpc :GetOrderState,
      Tiapi.Proto.GetOrderStateRequest,
      Tiapi.Proto.OrderState

  rpc :GetOrders,
      Tiapi.Proto.GetOrdersRequest,
      Tiapi.Proto.GetOrdersResponse

  rpc :ReplaceOrder,
      Tiapi.Proto.ReplaceOrderRequest,
      Tiapi.Proto.PostOrderResponse

  rpc :GetMaxLots,
      Tiapi.Proto.GetMaxLotsRequest,
      Tiapi.Proto.GetMaxLotsResponse

  rpc :GetOrderPrice,
      Tiapi.Proto.GetOrderPriceRequest,
      Tiapi.Proto.GetOrderPriceResponse
end

defmodule Tiapi.Proto.OrdersService.Stub do
  use GRPC.Stub, service: Tiapi.Proto.OrdersService.Service
end
