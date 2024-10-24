defmodule Tiapi.Proto.AccountType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCOUNT_TYPE_UNSPECIFIED, 0
  field :ACCOUNT_TYPE_TINKOFF, 1
  field :ACCOUNT_TYPE_TINKOFF_IIS, 2
  field :ACCOUNT_TYPE_INVEST_BOX, 3
  field :ACCOUNT_TYPE_INVEST_FUND, 4
end

defmodule Tiapi.Proto.AccountStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCOUNT_STATUS_UNSPECIFIED, 0
  field :ACCOUNT_STATUS_NEW, 1
  field :ACCOUNT_STATUS_OPEN, 2
  field :ACCOUNT_STATUS_CLOSED, 3
  field :ACCOUNT_STATUS_ALL, 4
end

defmodule Tiapi.Proto.AccessLevel do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCOUNT_ACCESS_LEVEL_UNSPECIFIED, 0
  field :ACCOUNT_ACCESS_LEVEL_FULL_ACCESS, 1
  field :ACCOUNT_ACCESS_LEVEL_READ_ONLY, 2
  field :ACCOUNT_ACCESS_LEVEL_NO_ACCESS, 3
end

defmodule Tiapi.Proto.GetAccountsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :status, 1,
    proto3_optional: true,
    type: Tiapi.Proto.AccountStatus,
    enum: true
end

defmodule Tiapi.Proto.GetAccountsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accounts, 1,
    repeated: true,
    type: Tiapi.Proto.Account
end

defmodule Tiapi.Proto.Account do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :type, 2, type: Tiapi.Proto.AccountType, enum: true
  field :name, 3, type: :string

  field :status, 4,
    type: Tiapi.Proto.AccountStatus,
    enum: true

  field :opened_date, 5, type: Google.Protobuf.Timestamp, json_name: "openedDate"
  field :closed_date, 6, type: Google.Protobuf.Timestamp, json_name: "closedDate"

  field :access_level, 7,
    type: Tiapi.Proto.AccessLevel,
    json_name: "accessLevel",
    enum: true
end

defmodule Tiapi.Proto.GetMarginAttributesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
end

defmodule Tiapi.Proto.GetMarginAttributesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :liquid_portfolio, 1,
    type: Tiapi.Proto.MoneyValue,
    json_name: "liquidPortfolio"

  field :starting_margin, 2,
    type: Tiapi.Proto.MoneyValue,
    json_name: "startingMargin"

  field :minimal_margin, 3,
    type: Tiapi.Proto.MoneyValue,
    json_name: "minimalMargin"

  field :funds_sufficiency_level, 4,
    type: Tiapi.Proto.Quotation,
    json_name: "fundsSufficiencyLevel"

  field :amount_of_missing_funds, 5,
    type: Tiapi.Proto.MoneyValue,
    json_name: "amountOfMissingFunds"

  field :corrected_margin, 6,
    type: Tiapi.Proto.MoneyValue,
    json_name: "correctedMargin"
end

defmodule Tiapi.Proto.GetUserTariffRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.GetUserTariffResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :unary_limits, 1,
    repeated: true,
    type: Tiapi.Proto.UnaryLimit,
    json_name: "unaryLimits"

  field :stream_limits, 2,
    repeated: true,
    type: Tiapi.Proto.StreamLimit,
    json_name: "streamLimits"
end

defmodule Tiapi.Proto.UnaryLimit do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :limit_per_minute, 1, type: :int32, json_name: "limitPerMinute"
  field :methods, 2, repeated: true, type: :string
end

defmodule Tiapi.Proto.StreamLimit do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :limit, 1, type: :int32
  field :streams, 2, repeated: true, type: :string
  field :open, 3, type: :int32
end

defmodule Tiapi.Proto.GetInfoRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.GetInfoResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :prem_status, 1, type: :bool, json_name: "premStatus"
  field :qual_status, 2, type: :bool, json_name: "qualStatus"

  field :qualified_for_work_with, 3,
    repeated: true,
    type: :string,
    json_name: "qualifiedForWorkWith"

  field :tariff, 4, type: :string
end

defmodule Tiapi.Proto.UsersService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.UsersService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetAccounts,
      Tiapi.Proto.GetAccountsRequest,
      Tiapi.Proto.GetAccountsResponse

  rpc :GetMarginAttributes,
      Tiapi.Proto.GetMarginAttributesRequest,
      Tiapi.Proto.GetMarginAttributesResponse

  rpc :GetUserTariff,
      Tiapi.Proto.GetUserTariffRequest,
      Tiapi.Proto.GetUserTariffResponse

  rpc :GetInfo,
      Tiapi.Proto.GetInfoRequest,
      Tiapi.Proto.GetInfoResponse
end

defmodule Tiapi.Proto.UsersService.Stub do
  use GRPC.Stub, service: Tiapi.Proto.UsersService.Service
end
