defmodule Tiapi.Proto.SubscriptionAction do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SUBSCRIPTION_ACTION_UNSPECIFIED, 0
  field :SUBSCRIPTION_ACTION_SUBSCRIBE, 1
  field :SUBSCRIPTION_ACTION_UNSUBSCRIBE, 2
end

defmodule Tiapi.Proto.SubscriptionInterval do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SUBSCRIPTION_INTERVAL_UNSPECIFIED, 0
  field :SUBSCRIPTION_INTERVAL_ONE_MINUTE, 1
  field :SUBSCRIPTION_INTERVAL_FIVE_MINUTES, 2
  field :SUBSCRIPTION_INTERVAL_FIFTEEN_MINUTES, 3
  field :SUBSCRIPTION_INTERVAL_ONE_HOUR, 4
  field :SUBSCRIPTION_INTERVAL_ONE_DAY, 5
  field :SUBSCRIPTION_INTERVAL_2_MIN, 6
  field :SUBSCRIPTION_INTERVAL_3_MIN, 7
  field :SUBSCRIPTION_INTERVAL_10_MIN, 8
  field :SUBSCRIPTION_INTERVAL_30_MIN, 9
  field :SUBSCRIPTION_INTERVAL_2_HOUR, 10
  field :SUBSCRIPTION_INTERVAL_4_HOUR, 11
  field :SUBSCRIPTION_INTERVAL_WEEK, 12
  field :SUBSCRIPTION_INTERVAL_MONTH, 13
end

defmodule Tiapi.Proto.SubscriptionStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SUBSCRIPTION_STATUS_UNSPECIFIED, 0
  field :SUBSCRIPTION_STATUS_SUCCESS, 1
  field :SUBSCRIPTION_STATUS_INSTRUMENT_NOT_FOUND, 2
  field :SUBSCRIPTION_STATUS_SUBSCRIPTION_ACTION_IS_INVALID, 3
  field :SUBSCRIPTION_STATUS_DEPTH_IS_INVALID, 4
  field :SUBSCRIPTION_STATUS_INTERVAL_IS_INVALID, 5
  field :SUBSCRIPTION_STATUS_LIMIT_IS_EXCEEDED, 6
  field :SUBSCRIPTION_STATUS_INTERNAL_ERROR, 7
  field :SUBSCRIPTION_STATUS_TOO_MANY_REQUESTS, 8
  field :SUBSCRIPTION_STATUS_SUBSCRIPTION_NOT_FOUND, 9
end

defmodule Tiapi.Proto.TradeSourceType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRADE_SOURCE_UNSPECIFIED, 0
  field :TRADE_SOURCE_EXCHANGE, 1
  field :TRADE_SOURCE_DEALER, 2
  field :TRADE_SOURCE_ALL, 3
end

defmodule Tiapi.Proto.TradeDirection do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRADE_DIRECTION_UNSPECIFIED, 0
  field :TRADE_DIRECTION_BUY, 1
  field :TRADE_DIRECTION_SELL, 2
end

defmodule Tiapi.Proto.CandleInterval do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CANDLE_INTERVAL_UNSPECIFIED, 0
  field :CANDLE_INTERVAL_1_MIN, 1
  field :CANDLE_INTERVAL_5_MIN, 2
  field :CANDLE_INTERVAL_15_MIN, 3
  field :CANDLE_INTERVAL_HOUR, 4
  field :CANDLE_INTERVAL_DAY, 5
  field :CANDLE_INTERVAL_2_MIN, 6
  field :CANDLE_INTERVAL_3_MIN, 7
  field :CANDLE_INTERVAL_10_MIN, 8
  field :CANDLE_INTERVAL_30_MIN, 9
  field :CANDLE_INTERVAL_2_HOUR, 10
  field :CANDLE_INTERVAL_4_HOUR, 11
  field :CANDLE_INTERVAL_WEEK, 12
  field :CANDLE_INTERVAL_MONTH, 13
end

defmodule Tiapi.Proto.CandleSource do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CANDLE_SOURCE_UNSPECIFIED, 0
  field :CANDLE_SOURCE_EXCHANGE, 1
  field :CANDLE_SOURCE_DEALER_WEEKEND, 2
end

defmodule Tiapi.Proto.OrderBookType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ORDERBOOK_TYPE_UNSPECIFIED, 0
  field :ORDERBOOK_TYPE_EXCHANGE, 1
  field :ORDERBOOK_TYPE_DEALER, 2
  field :ORDERBOOK_TYPE_ALL, 3
end

defmodule Tiapi.Proto.LastPriceType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LAST_PRICE_UNSPECIFIED, 0
  field :LAST_PRICE_EXCHANGE, 1
  field :LAST_PRICE_DEALER, 2
end

defmodule Tiapi.Proto.GetCandlesRequest.CandleSource do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CANDLE_SOURCE_UNSPECIFIED, 0
  field :CANDLE_SOURCE_EXCHANGE, 1
  field :CANDLE_SOURCE_INCLUDE_WEEKEND, 3
end

defmodule Tiapi.Proto.GetTechAnalysisRequest.IndicatorInterval do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INDICATOR_INTERVAL_UNSPECIFIED, 0
  field :INDICATOR_INTERVAL_ONE_MINUTE, 1
  field :INDICATOR_INTERVAL_FIVE_MINUTES, 2
  field :INDICATOR_INTERVAL_FIFTEEN_MINUTES, 3
  field :INDICATOR_INTERVAL_ONE_HOUR, 4
  field :INDICATOR_INTERVAL_ONE_DAY, 5
  field :INDICATOR_INTERVAL_2_MIN, 6
  field :INDICATOR_INTERVAL_3_MIN, 7
  field :INDICATOR_INTERVAL_10_MIN, 8
  field :INDICATOR_INTERVAL_30_MIN, 9
  field :INDICATOR_INTERVAL_2_HOUR, 10
  field :INDICATOR_INTERVAL_4_HOUR, 11
  field :INDICATOR_INTERVAL_WEEK, 12
  field :INDICATOR_INTERVAL_MONTH, 13
end

defmodule Tiapi.Proto.GetTechAnalysisRequest.TypeOfPrice do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_OF_PRICE_UNSPECIFIED, 0
  field :TYPE_OF_PRICE_CLOSE, 1
  field :TYPE_OF_PRICE_OPEN, 2
  field :TYPE_OF_PRICE_HIGH, 3
  field :TYPE_OF_PRICE_LOW, 4
  field :TYPE_OF_PRICE_AVG, 5
end

defmodule Tiapi.Proto.GetTechAnalysisRequest.IndicatorType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INDICATOR_TYPE_UNSPECIFIED, 0
  field :INDICATOR_TYPE_BB, 1
  field :INDICATOR_TYPE_EMA, 2
  field :INDICATOR_TYPE_RSI, 3
  field :INDICATOR_TYPE_MACD, 4
  field :INDICATOR_TYPE_SMA, 5
end

defmodule Tiapi.Proto.MarketDataRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :payload, 0

  field :subscribe_candles_request, 1,
    type: Tiapi.Proto.SubscribeCandlesRequest,
    json_name: "subscribeCandlesRequest",
    oneof: 0

  field :subscribe_order_book_request, 2,
    type: Tiapi.Proto.SubscribeOrderBookRequest,
    json_name: "subscribeOrderBookRequest",
    oneof: 0

  field :subscribe_trades_request, 3,
    type: Tiapi.Proto.SubscribeTradesRequest,
    json_name: "subscribeTradesRequest",
    oneof: 0

  field :subscribe_info_request, 4,
    type: Tiapi.Proto.SubscribeInfoRequest,
    json_name: "subscribeInfoRequest",
    oneof: 0

  field :subscribe_last_price_request, 5,
    type: Tiapi.Proto.SubscribeLastPriceRequest,
    json_name: "subscribeLastPriceRequest",
    oneof: 0

  field :get_my_subscriptions, 6,
    type: Tiapi.Proto.GetMySubscriptions,
    json_name: "getMySubscriptions",
    oneof: 0

  field :ping, 7, type: Tiapi.Proto.PingRequest, oneof: 0

  field :ping_settings, 15,
    type: Tiapi.Proto.PingDelaySettings,
    json_name: "pingSettings",
    oneof: 0
end

defmodule Tiapi.Proto.MarketDataServerSideStreamRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscribe_candles_request, 1,
    type: Tiapi.Proto.SubscribeCandlesRequest,
    json_name: "subscribeCandlesRequest"

  field :subscribe_order_book_request, 2,
    type: Tiapi.Proto.SubscribeOrderBookRequest,
    json_name: "subscribeOrderBookRequest"

  field :subscribe_trades_request, 3,
    type: Tiapi.Proto.SubscribeTradesRequest,
    json_name: "subscribeTradesRequest"

  field :subscribe_info_request, 4,
    type: Tiapi.Proto.SubscribeInfoRequest,
    json_name: "subscribeInfoRequest"

  field :subscribe_last_price_request, 5,
    type: Tiapi.Proto.SubscribeLastPriceRequest,
    json_name: "subscribeLastPriceRequest"

  field :ping_settings, 15,
    type: Tiapi.Proto.PingDelaySettings,
    json_name: "pingSettings"
end

defmodule Tiapi.Proto.MarketDataResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :payload, 0

  field :subscribe_candles_response, 1,
    type: Tiapi.Proto.SubscribeCandlesResponse,
    json_name: "subscribeCandlesResponse",
    oneof: 0

  field :subscribe_order_book_response, 2,
    type: Tiapi.Proto.SubscribeOrderBookResponse,
    json_name: "subscribeOrderBookResponse",
    oneof: 0

  field :subscribe_trades_response, 3,
    type: Tiapi.Proto.SubscribeTradesResponse,
    json_name: "subscribeTradesResponse",
    oneof: 0

  field :subscribe_info_response, 4,
    type: Tiapi.Proto.SubscribeInfoResponse,
    json_name: "subscribeInfoResponse",
    oneof: 0

  field :candle, 5, type: Tiapi.Proto.Candle, oneof: 0
  field :trade, 6, type: Tiapi.Proto.Trade, oneof: 0
  field :orderbook, 7, type: Tiapi.Proto.OrderBook, oneof: 0

  field :trading_status, 8,
    type: Tiapi.Proto.TradingStatus,
    json_name: "tradingStatus",
    oneof: 0

  field :ping, 9, type: Tiapi.Proto.Ping, oneof: 0

  field :subscribe_last_price_response, 10,
    type: Tiapi.Proto.SubscribeLastPriceResponse,
    json_name: "subscribeLastPriceResponse",
    oneof: 0

  field :last_price, 11,
    type: Tiapi.Proto.LastPrice,
    json_name: "lastPrice",
    oneof: 0
end

defmodule Tiapi.Proto.SubscribeCandlesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription_action, 1,
    type: Tiapi.Proto.SubscriptionAction,
    json_name: "subscriptionAction",
    enum: true

  field :instruments, 2,
    repeated: true,
    type: Tiapi.Proto.CandleInstrument

  field :waiting_close, 3, type: :bool, json_name: "waitingClose"
end

defmodule Tiapi.Proto.CandleInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true

  field :interval, 2,
    type: Tiapi.Proto.SubscriptionInterval,
    enum: true

  field :instrument_id, 3, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.SubscribeCandlesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 1, type: :string, json_name: "trackingId"

  field :candles_subscriptions, 2,
    repeated: true,
    type: Tiapi.Proto.CandleSubscription,
    json_name: "candlesSubscriptions"
end

defmodule Tiapi.Proto.CandleSubscription do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :interval, 2,
    type: Tiapi.Proto.SubscriptionInterval,
    enum: true

  field :subscription_status, 3,
    type: Tiapi.Proto.SubscriptionStatus,
    json_name: "subscriptionStatus",
    enum: true

  field :instrument_uid, 4, type: :string, json_name: "instrumentUid"
  field :waiting_close, 5, type: :bool, json_name: "waitingClose"
  field :stream_id, 6, type: :string, json_name: "streamId"
  field :subscription_id, 7, type: :string, json_name: "subscriptionId"
end

defmodule Tiapi.Proto.SubscribeOrderBookRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription_action, 1,
    type: Tiapi.Proto.SubscriptionAction,
    json_name: "subscriptionAction",
    enum: true

  field :instruments, 2,
    repeated: true,
    type: Tiapi.Proto.OrderBookInstrument
end

defmodule Tiapi.Proto.OrderBookInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :depth, 2, type: :int32
  field :instrument_id, 3, type: :string, json_name: "instrumentId"

  field :order_book_type, 4,
    type: Tiapi.Proto.OrderBookType,
    json_name: "orderBookType",
    enum: true
end

defmodule Tiapi.Proto.SubscribeOrderBookResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 1, type: :string, json_name: "trackingId"

  field :order_book_subscriptions, 2,
    repeated: true,
    type: Tiapi.Proto.OrderBookSubscription,
    json_name: "orderBookSubscriptions"
end

defmodule Tiapi.Proto.OrderBookSubscription do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :depth, 2, type: :int32

  field :subscription_status, 3,
    type: Tiapi.Proto.SubscriptionStatus,
    json_name: "subscriptionStatus",
    enum: true

  field :instrument_uid, 4, type: :string, json_name: "instrumentUid"
  field :stream_id, 5, type: :string, json_name: "streamId"
  field :subscription_id, 6, type: :string, json_name: "subscriptionId"

  field :order_book_type, 7,
    type: Tiapi.Proto.OrderBookType,
    json_name: "orderBookType",
    enum: true
end

defmodule Tiapi.Proto.SubscribeTradesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription_action, 1,
    type: Tiapi.Proto.SubscriptionAction,
    json_name: "subscriptionAction",
    enum: true

  field :instruments, 2,
    repeated: true,
    type: Tiapi.Proto.TradeInstrument

  field :trade_source, 3,
    type: Tiapi.Proto.TradeSourceType,
    json_name: "tradeSource",
    enum: true
end

defmodule Tiapi.Proto.TradeInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :instrument_id, 2, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.SubscribeTradesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 1, type: :string, json_name: "trackingId"

  field :trade_subscriptions, 2,
    repeated: true,
    type: Tiapi.Proto.TradeSubscription,
    json_name: "tradeSubscriptions"

  field :trade_source, 3,
    type: Tiapi.Proto.TradeSourceType,
    json_name: "tradeSource",
    enum: true
end

defmodule Tiapi.Proto.TradeSubscription do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :subscription_status, 2,
    type: Tiapi.Proto.SubscriptionStatus,
    json_name: "subscriptionStatus",
    enum: true

  field :instrument_uid, 3, type: :string, json_name: "instrumentUid"
  field :stream_id, 4, type: :string, json_name: "streamId"
  field :subscription_id, 5, type: :string, json_name: "subscriptionId"
end

defmodule Tiapi.Proto.SubscribeInfoRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription_action, 1,
    type: Tiapi.Proto.SubscriptionAction,
    json_name: "subscriptionAction",
    enum: true

  field :instruments, 2,
    repeated: true,
    type: Tiapi.Proto.InfoInstrument
end

defmodule Tiapi.Proto.InfoInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :instrument_id, 2, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.SubscribeInfoResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 1, type: :string, json_name: "trackingId"

  field :info_subscriptions, 2,
    repeated: true,
    type: Tiapi.Proto.InfoSubscription,
    json_name: "infoSubscriptions"
end

defmodule Tiapi.Proto.InfoSubscription do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :subscription_status, 2,
    type: Tiapi.Proto.SubscriptionStatus,
    json_name: "subscriptionStatus",
    enum: true

  field :instrument_uid, 3, type: :string, json_name: "instrumentUid"
  field :stream_id, 4, type: :string, json_name: "streamId"
  field :subscription_id, 5, type: :string, json_name: "subscriptionId"
end

defmodule Tiapi.Proto.SubscribeLastPriceRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subscription_action, 1,
    type: Tiapi.Proto.SubscriptionAction,
    json_name: "subscriptionAction",
    enum: true

  field :instruments, 2,
    repeated: true,
    type: Tiapi.Proto.LastPriceInstrument
end

defmodule Tiapi.Proto.LastPriceInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :instrument_id, 2, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.SubscribeLastPriceResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 1, type: :string, json_name: "trackingId"

  field :last_price_subscriptions, 2,
    repeated: true,
    type: Tiapi.Proto.LastPriceSubscription,
    json_name: "lastPriceSubscriptions"
end

defmodule Tiapi.Proto.LastPriceSubscription do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :subscription_status, 2,
    type: Tiapi.Proto.SubscriptionStatus,
    json_name: "subscriptionStatus",
    enum: true

  field :instrument_uid, 3, type: :string, json_name: "instrumentUid"
  field :stream_id, 4, type: :string, json_name: "streamId"
  field :subscription_id, 5, type: :string, json_name: "subscriptionId"
end

defmodule Tiapi.Proto.Candle do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :interval, 2,
    type: Tiapi.Proto.SubscriptionInterval,
    enum: true

  field :open, 3, type: Tiapi.Proto.Quotation
  field :high, 4, type: Tiapi.Proto.Quotation
  field :low, 5, type: Tiapi.Proto.Quotation
  field :close, 6, type: Tiapi.Proto.Quotation
  field :volume, 7, type: :int64
  field :time, 8, type: Google.Protobuf.Timestamp
  field :last_trade_ts, 9, type: Google.Protobuf.Timestamp, json_name: "lastTradeTs"
  field :instrument_uid, 10, type: :string, json_name: "instrumentUid"
end

defmodule Tiapi.Proto.OrderBook do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :depth, 2, type: :int32
  field :is_consistent, 3, type: :bool, json_name: "isConsistent"
  field :bids, 4, repeated: true, type: Tiapi.Proto.Order
  field :asks, 5, repeated: true, type: Tiapi.Proto.Order
  field :time, 6, type: Google.Protobuf.Timestamp

  field :limit_up, 7,
    type: Tiapi.Proto.Quotation,
    json_name: "limitUp"

  field :limit_down, 8,
    type: Tiapi.Proto.Quotation,
    json_name: "limitDown"

  field :instrument_uid, 9, type: :string, json_name: "instrumentUid"

  field :order_book_type, 10,
    type: Tiapi.Proto.OrderBookType,
    json_name: "orderBookType",
    enum: true
end

defmodule Tiapi.Proto.Order do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :price, 1, type: Tiapi.Proto.Quotation
  field :quantity, 2, type: :int64
end

defmodule Tiapi.Proto.Trade do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :direction, 2,
    type: Tiapi.Proto.TradeDirection,
    enum: true

  field :price, 3, type: Tiapi.Proto.Quotation
  field :quantity, 4, type: :int64
  field :time, 5, type: Google.Protobuf.Timestamp
  field :instrument_uid, 6, type: :string, json_name: "instrumentUid"

  field :trade_source, 7,
    type: Tiapi.Proto.TradeSourceType,
    json_name: "tradeSource",
    enum: true
end

defmodule Tiapi.Proto.TradingStatus do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :trading_status, 2,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :time, 3, type: Google.Protobuf.Timestamp
  field :limit_order_available_flag, 4, type: :bool, json_name: "limitOrderAvailableFlag"
  field :market_order_available_flag, 5, type: :bool, json_name: "marketOrderAvailableFlag"
  field :instrument_uid, 6, type: :string, json_name: "instrumentUid"
end

defmodule Tiapi.Proto.GetCandlesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :from, 2, type: Google.Protobuf.Timestamp, deprecated: false
  field :to, 3, type: Google.Protobuf.Timestamp, deprecated: false

  field :interval, 4,
    type: Tiapi.Proto.CandleInterval,
    enum: true,
    deprecated: false

  field :instrument_id, 5, proto3_optional: true, type: :string, json_name: "instrumentId"

  field :candle_source_type, 7,
    proto3_optional: true,
    type: Tiapi.Proto.GetCandlesRequest.CandleSource,
    json_name: "candleSourceType",
    enum: true

  field :limit, 10, proto3_optional: true, type: :int32
end

defmodule Tiapi.Proto.GetCandlesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :candles, 1,
    repeated: true,
    type: Tiapi.Proto.HistoricCandle
end

defmodule Tiapi.Proto.HistoricCandle do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :open, 1, type: Tiapi.Proto.Quotation
  field :high, 2, type: Tiapi.Proto.Quotation
  field :low, 3, type: Tiapi.Proto.Quotation
  field :close, 4, type: Tiapi.Proto.Quotation
  field :volume, 5, type: :int64
  field :time, 6, type: Google.Protobuf.Timestamp
  field :is_complete, 7, type: :bool, json_name: "isComplete"

  field :candle_source, 9,
    type: Tiapi.Proto.CandleSource,
    json_name: "candleSource",
    enum: true
end

defmodule Tiapi.Proto.GetLastPricesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, repeated: true, type: :string, deprecated: true
  field :instrument_id, 2, repeated: true, type: :string, json_name: "instrumentId"

  field :last_price_type, 3,
    type: Tiapi.Proto.LastPriceType,
    json_name: "lastPriceType",
    enum: true
end

defmodule Tiapi.Proto.GetLastPricesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :last_prices, 1,
    repeated: true,
    type: Tiapi.Proto.LastPrice,
    json_name: "lastPrices"
end

defmodule Tiapi.Proto.LastPrice do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :price, 2, type: Tiapi.Proto.Quotation
  field :time, 3, type: Google.Protobuf.Timestamp
  field :instrument_uid, 11, type: :string, json_name: "instrumentUid"

  field :last_price_type, 12,
    type: Tiapi.Proto.LastPriceType,
    json_name: "lastPriceType",
    enum: true
end

defmodule Tiapi.Proto.GetOrderBookRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :depth, 2, type: :int32, deprecated: false
  field :instrument_id, 3, proto3_optional: true, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.GetOrderBookResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :depth, 2, type: :int32
  field :bids, 3, repeated: true, type: Tiapi.Proto.Order
  field :asks, 4, repeated: true, type: Tiapi.Proto.Order

  field :last_price, 5,
    type: Tiapi.Proto.Quotation,
    json_name: "lastPrice"

  field :close_price, 6,
    type: Tiapi.Proto.Quotation,
    json_name: "closePrice"

  field :limit_up, 7,
    type: Tiapi.Proto.Quotation,
    json_name: "limitUp"

  field :limit_down, 8,
    type: Tiapi.Proto.Quotation,
    json_name: "limitDown"

  field :last_price_ts, 21, type: Google.Protobuf.Timestamp, json_name: "lastPriceTs"
  field :close_price_ts, 22, type: Google.Protobuf.Timestamp, json_name: "closePriceTs"
  field :orderbook_ts, 23, type: Google.Protobuf.Timestamp, json_name: "orderbookTs"
  field :instrument_uid, 9, type: :string, json_name: "instrumentUid"
end

defmodule Tiapi.Proto.GetTradingStatusRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :instrument_id, 2, proto3_optional: true, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.GetTradingStatusesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 1, repeated: true, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.GetTradingStatusesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :trading_statuses, 1,
    repeated: true,
    type: Tiapi.Proto.GetTradingStatusResponse,
    json_name: "tradingStatuses"
end

defmodule Tiapi.Proto.GetTradingStatusResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string

  field :trading_status, 2,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :limit_order_available_flag, 3, type: :bool, json_name: "limitOrderAvailableFlag"
  field :market_order_available_flag, 4, type: :bool, json_name: "marketOrderAvailableFlag"
  field :api_trade_available_flag, 5, type: :bool, json_name: "apiTradeAvailableFlag"
  field :instrument_uid, 6, type: :string, json_name: "instrumentUid"
  field :bestprice_order_available_flag, 8, type: :bool, json_name: "bestpriceOrderAvailableFlag"
  field :only_best_price, 9, type: :bool, json_name: "onlyBestPrice"
end

defmodule Tiapi.Proto.GetLastTradesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :from, 2, type: Google.Protobuf.Timestamp, deprecated: false
  field :to, 3, type: Google.Protobuf.Timestamp, deprecated: false
  field :instrument_id, 4, proto3_optional: true, type: :string, json_name: "instrumentId"

  field :trade_source, 5,
    type: Tiapi.Proto.TradeSourceType,
    json_name: "tradeSource",
    enum: true
end

defmodule Tiapi.Proto.GetLastTradesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :trades, 1, repeated: true, type: Tiapi.Proto.Trade
end

defmodule Tiapi.Proto.GetMySubscriptions do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.GetClosePricesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.InstrumentClosePriceRequest,
    deprecated: false
end

defmodule Tiapi.Proto.InstrumentClosePriceRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 1, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.GetClosePricesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :close_prices, 1,
    repeated: true,
    type: Tiapi.Proto.InstrumentClosePriceResponse,
    json_name: "closePrices"
end

defmodule Tiapi.Proto.InstrumentClosePriceResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :instrument_uid, 2, type: :string, json_name: "instrumentUid"
  field :price, 11, type: Tiapi.Proto.Quotation

  field :evening_session_price, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "eveningSessionPrice"

  field :time, 21, type: Google.Protobuf.Timestamp
end

defmodule Tiapi.Proto.GetTechAnalysisRequest.Smoothing do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :fast_length, 1, type: :int32, json_name: "fastLength"
  field :slow_length, 2, type: :int32, json_name: "slowLength"
  field :signal_smoothing, 3, type: :int32, json_name: "signalSmoothing"
end

defmodule Tiapi.Proto.GetTechAnalysisRequest.Deviation do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :deviation_multiplier, 1,
    type: Tiapi.Proto.Quotation,
    json_name: "deviationMultiplier"
end

defmodule Tiapi.Proto.GetTechAnalysisRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :indicator_type, 1,
    type: Tiapi.Proto.GetTechAnalysisRequest.IndicatorType,
    json_name: "indicatorType",
    enum: true,
    deprecated: false

  field :instrument_uid, 2, type: :string, json_name: "instrumentUid", deprecated: false
  field :from, 3, type: Google.Protobuf.Timestamp, deprecated: false
  field :to, 4, type: Google.Protobuf.Timestamp, deprecated: false

  field :interval, 5,
    type:
      Tiapi.Proto.GetTechAnalysisRequest.IndicatorInterval,
    enum: true,
    deprecated: false

  field :type_of_price, 6,
    type: Tiapi.Proto.GetTechAnalysisRequest.TypeOfPrice,
    json_name: "typeOfPrice",
    enum: true,
    deprecated: false

  field :length, 7, type: :int32

  field :deviation, 8,
    type: Tiapi.Proto.GetTechAnalysisRequest.Deviation

  field :smoothing, 9,
    type: Tiapi.Proto.GetTechAnalysisRequest.Smoothing
end

defmodule Tiapi.Proto.GetTechAnalysisResponse.TechAnalysisItem do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :timestamp, 1, type: Google.Protobuf.Timestamp

  field :middle_band, 2,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation,
    json_name: "middleBand"

  field :upper_band, 3,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation,
    json_name: "upperBand"

  field :lower_band, 4,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation,
    json_name: "lowerBand"

  field :signal, 5,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation

  field :macd, 6,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation
end

defmodule Tiapi.Proto.GetTechAnalysisResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :technical_indicators, 1,
    repeated: true,
    type:
      Tiapi.Proto.GetTechAnalysisResponse.TechAnalysisItem,
    json_name: "technicalIndicators"
end

defmodule Tiapi.Proto.MarketDataService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.MarketDataService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetCandles,
      Tiapi.Proto.GetCandlesRequest,
      Tiapi.Proto.GetCandlesResponse

  rpc :GetLastPrices,
      Tiapi.Proto.GetLastPricesRequest,
      Tiapi.Proto.GetLastPricesResponse

  rpc :GetOrderBook,
      Tiapi.Proto.GetOrderBookRequest,
      Tiapi.Proto.GetOrderBookResponse

  rpc :GetTradingStatus,
      Tiapi.Proto.GetTradingStatusRequest,
      Tiapi.Proto.GetTradingStatusResponse

  rpc :GetTradingStatuses,
      Tiapi.Proto.GetTradingStatusesRequest,
      Tiapi.Proto.GetTradingStatusesResponse

  rpc :GetLastTrades,
      Tiapi.Proto.GetLastTradesRequest,
      Tiapi.Proto.GetLastTradesResponse

  rpc :GetClosePrices,
      Tiapi.Proto.GetClosePricesRequest,
      Tiapi.Proto.GetClosePricesResponse

  rpc :GetTechAnalysis,
      Tiapi.Proto.GetTechAnalysisRequest,
      Tiapi.Proto.GetTechAnalysisResponse
end

defmodule Tiapi.Proto.MarketDataService.Stub do
  use GRPC.Stub,
    service: Tiapi.Proto.MarketDataService.Service
end

defmodule Tiapi.Proto.MarketDataStreamService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.MarketDataStreamService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :MarketDataStream,
      stream(Tiapi.Proto.MarketDataRequest),
      stream(Tiapi.Proto.MarketDataResponse)

  rpc :MarketDataServerSideStream,
      Tiapi.Proto.MarketDataServerSideStreamRequest,
      stream(Tiapi.Proto.MarketDataResponse)
end

defmodule Tiapi.Proto.MarketDataStreamService.Stub do
  use GRPC.Stub,
    service: Tiapi.Proto.MarketDataStreamService.Service
end
