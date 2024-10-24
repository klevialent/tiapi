defmodule Tiapi.Proto.StrategyType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STRATEGY_TYPE_UNSPECIFIED, 0
  field :STRATEGY_TYPE_TECHNICAL, 1
  field :STRATEGY_TYPE_FUNDAMENTAL, 2
end

defmodule Tiapi.Proto.SignalDirection do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SIGNAL_DIRECTION_UNSPECIFIED, 0
  field :SIGNAL_DIRECTION_BUY, 1
  field :SIGNAL_DIRECTION_SELL, 2
end

defmodule Tiapi.Proto.SignalState do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SIGNAL_STATE_UNSPECIFIED, 0
  field :SIGNAL_STATE_ACTIVE, 1
  field :SIGNAL_STATE_CLOSED, 2
  field :SIGNAL_STATE_ALL, 3
end

defmodule Tiapi.Proto.GetStrategiesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :strategy_id, 1, proto3_optional: true, type: :string, json_name: "strategyId"
end

defmodule Tiapi.Proto.GetStrategiesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :strategies, 1,
    repeated: true,
    type: Tiapi.Proto.Strategy
end

defmodule Tiapi.Proto.Strategy do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :strategy_id, 1, type: :string, json_name: "strategyId", deprecated: false
  field :strategy_name, 2, type: :string, json_name: "strategyName", deprecated: false

  field :strategy_description, 3,
    proto3_optional: true,
    type: :string,
    json_name: "strategyDescription"

  field :strategy_url, 4, proto3_optional: true, type: :string, json_name: "strategyUrl"

  field :strategy_type, 5,
    type: Tiapi.Proto.StrategyType,
    json_name: "strategyType",
    enum: true,
    deprecated: false

  field :active_signals, 6, type: :int32, json_name: "activeSignals", deprecated: false
  field :total_signals, 7, type: :int32, json_name: "totalSignals", deprecated: false
  field :time_in_position, 8, type: :int64, json_name: "timeInPosition", deprecated: false

  field :average_signal_yield, 9,
    type: Tiapi.Proto.Quotation,
    json_name: "averageSignalYield",
    deprecated: false

  field :average_signal_yield_year, 10,
    type: Tiapi.Proto.Quotation,
    json_name: "averageSignalYieldYear",
    deprecated: false

  field :yield, 11,
    type: Tiapi.Proto.Quotation,
    deprecated: false

  field :yield_year, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "yieldYear",
    deprecated: false
end

defmodule Tiapi.Proto.GetSignalsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :signal_id, 1, proto3_optional: true, type: :string, json_name: "signalId"
  field :strategy_id, 2, proto3_optional: true, type: :string, json_name: "strategyId"

  field :strategy_type, 3,
    proto3_optional: true,
    type: Tiapi.Proto.StrategyType,
    json_name: "strategyType",
    enum: true

  field :instrument_uid, 4, proto3_optional: true, type: :string, json_name: "instrumentUid"
  field :from, 5, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :to, 6, proto3_optional: true, type: Google.Protobuf.Timestamp

  field :direction, 7,
    proto3_optional: true,
    type: Tiapi.Proto.SignalDirection,
    enum: true

  field :active, 8,
    proto3_optional: true,
    type: Tiapi.Proto.SignalState,
    enum: true

  field :paging, 9,
    proto3_optional: true,
    type: Tiapi.Proto.Page
end

defmodule Tiapi.Proto.GetSignalsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :signals, 1,
    repeated: true,
    type: Tiapi.Proto.Signal

  field :paging, 2, type: Tiapi.Proto.PageResponse
end

defmodule Tiapi.Proto.Signal do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :signal_id, 1, type: :string, json_name: "signalId", deprecated: false
  field :strategy_id, 2, type: :string, json_name: "strategyId", deprecated: false
  field :strategy_name, 3, type: :string, json_name: "strategyName", deprecated: false
  field :instrument_uid, 4, type: :string, json_name: "instrumentUid", deprecated: false
  field :create_dt, 5, type: Google.Protobuf.Timestamp, json_name: "createDt", deprecated: false

  field :direction, 6,
    type: Tiapi.Proto.SignalDirection,
    enum: true,
    deprecated: false

  field :initial_price, 7,
    type: Tiapi.Proto.Quotation,
    json_name: "initialPrice",
    deprecated: false

  field :info, 8, proto3_optional: true, type: :string
  field :name, 9, type: :string, deprecated: false

  field :target_price, 10,
    type: Tiapi.Proto.Quotation,
    json_name: "targetPrice",
    deprecated: false

  field :end_dt, 11, type: Google.Protobuf.Timestamp, json_name: "endDt", deprecated: false
  field :probability, 12, proto3_optional: true, type: :int32

  field :stoploss, 13,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation

  field :close_price, 14,
    proto3_optional: true,
    type: Tiapi.Proto.Quotation,
    json_name: "closePrice"

  field :close_dt, 15,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "closeDt"
end

defmodule Tiapi.Proto.SignalService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.SignalService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetStrategies,
      Tiapi.Proto.GetStrategiesRequest,
      Tiapi.Proto.GetStrategiesResponse

  rpc :GetSignals,
      Tiapi.Proto.GetSignalsRequest,
      Tiapi.Proto.GetSignalsResponse
end

defmodule Tiapi.Proto.SignalService.Stub do
  use GRPC.Stub, service: Tiapi.Proto.SignalService.Service
end
