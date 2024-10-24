defmodule Tiapi.Proto.InstrumentType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTRUMENT_TYPE_UNSPECIFIED, 0
  field :INSTRUMENT_TYPE_BOND, 1
  field :INSTRUMENT_TYPE_SHARE, 2
  field :INSTRUMENT_TYPE_CURRENCY, 3
  field :INSTRUMENT_TYPE_ETF, 4
  field :INSTRUMENT_TYPE_FUTURES, 5
  field :INSTRUMENT_TYPE_SP, 6
  field :INSTRUMENT_TYPE_OPTION, 7
  field :INSTRUMENT_TYPE_CLEARING_CERTIFICATE, 8
  field :INSTRUMENT_TYPE_INDEX, 9
  field :INSTRUMENT_TYPE_COMMODITY, 10
end

defmodule Tiapi.Proto.SecurityTradingStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SECURITY_TRADING_STATUS_UNSPECIFIED, 0
  field :SECURITY_TRADING_STATUS_NOT_AVAILABLE_FOR_TRADING, 1
  field :SECURITY_TRADING_STATUS_OPENING_PERIOD, 2
  field :SECURITY_TRADING_STATUS_CLOSING_PERIOD, 3
  field :SECURITY_TRADING_STATUS_BREAK_IN_TRADING, 4
  field :SECURITY_TRADING_STATUS_NORMAL_TRADING, 5
  field :SECURITY_TRADING_STATUS_CLOSING_AUCTION, 6
  field :SECURITY_TRADING_STATUS_DARK_POOL_AUCTION, 7
  field :SECURITY_TRADING_STATUS_DISCRETE_AUCTION, 8
  field :SECURITY_TRADING_STATUS_OPENING_AUCTION_PERIOD, 9
  field :SECURITY_TRADING_STATUS_TRADING_AT_CLOSING_AUCTION_PRICE, 10
  field :SECURITY_TRADING_STATUS_SESSION_ASSIGNED, 11
  field :SECURITY_TRADING_STATUS_SESSION_CLOSE, 12
  field :SECURITY_TRADING_STATUS_SESSION_OPEN, 13
  field :SECURITY_TRADING_STATUS_DEALER_NORMAL_TRADING, 14
  field :SECURITY_TRADING_STATUS_DEALER_BREAK_IN_TRADING, 15
  field :SECURITY_TRADING_STATUS_DEALER_NOT_AVAILABLE_FOR_TRADING, 16
end

defmodule Tiapi.Proto.PriceType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PRICE_TYPE_UNSPECIFIED, 0
  field :PRICE_TYPE_POINT, 1
  field :PRICE_TYPE_CURRENCY, 2
end

defmodule Tiapi.Proto.ResultSubscriptionStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESULT_SUBSCRIPTION_STATUS_UNSPECIFIED, 0
  field :RESULT_SUBSCRIPTION_STATUS_OK, 1
  field :RESULT_SUBSCRIPTION_STATUS_ERROR, 13
end

defmodule Tiapi.Proto.MoneyValue do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :currency, 1, type: :string
  field :units, 2, type: :int64
  field :nano, 3, type: :int32
end

defmodule Tiapi.Proto.Quotation do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :units, 1, type: :int64
  field :nano, 2, type: :int32
end

defmodule Tiapi.Proto.PingRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time, 1, proto3_optional: true, type: Google.Protobuf.Timestamp
end

defmodule Tiapi.Proto.PingDelaySettings do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ping_delay_ms, 15, proto3_optional: true, type: :int32, json_name: "pingDelayMs"
end

defmodule Tiapi.Proto.Ping do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :stream_id, 2, type: :string, json_name: "streamId"

  field :ping_request_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "pingRequestTime"
end

defmodule Tiapi.Proto.Page do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :limit, 1, type: :int32
  field :page_number, 2, type: :int32, json_name: "pageNumber"
end

defmodule Tiapi.Proto.PageResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :limit, 1, type: :int32
  field :page_number, 2, type: :int32, json_name: "pageNumber"
  field :total_count, 3, type: :int32, json_name: "totalCount"
end

defmodule Tiapi.Proto.ResponseMetadata do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tracking_id, 42, type: :string, json_name: "trackingId"
  field :server_time, 43, type: Google.Protobuf.Timestamp, json_name: "serverTime"
end

defmodule Tiapi.Proto.BrandData do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :logo_name, 1, type: :string, json_name: "logoName"
  field :logo_base_color, 2, type: :string, json_name: "logoBaseColor"
  field :text_color, 3, type: :string, json_name: "textColor"
end

defmodule Tiapi.Proto.ErrorDetail do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: :string
  field :message, 3, type: :string
end
