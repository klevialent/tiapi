defmodule Tiapi.Proto.OpenSandboxAccountRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string
end

defmodule Tiapi.Proto.OpenSandboxAccountResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId"
end

defmodule Tiapi.Proto.CloseSandboxAccountRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false
end

defmodule Tiapi.Proto.CloseSandboxAccountResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.SandboxPayInRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account_id, 1, type: :string, json_name: "accountId", deprecated: false

  field :amount, 2,
    type: Tiapi.Proto.MoneyValue,
    deprecated: false
end

defmodule Tiapi.Proto.SandboxPayInResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :balance, 1, type: Tiapi.Proto.MoneyValue
end

defmodule Tiapi.Proto.SandboxService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.SandboxService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :OpenSandboxAccount,
      Tiapi.Proto.OpenSandboxAccountRequest,
      Tiapi.Proto.OpenSandboxAccountResponse

  rpc :GetSandboxAccounts,
      Tiapi.Proto.GetAccountsRequest,
      Tiapi.Proto.GetAccountsResponse

  rpc :CloseSandboxAccount,
      Tiapi.Proto.CloseSandboxAccountRequest,
      Tiapi.Proto.CloseSandboxAccountResponse

  rpc :PostSandboxOrder,
      Tiapi.Proto.PostOrderRequest,
      Tiapi.Proto.PostOrderResponse

  rpc :ReplaceSandboxOrder,
      Tiapi.Proto.ReplaceOrderRequest,
      Tiapi.Proto.PostOrderResponse

  rpc :GetSandboxOrders,
      Tiapi.Proto.GetOrdersRequest,
      Tiapi.Proto.GetOrdersResponse

  rpc :CancelSandboxOrder,
      Tiapi.Proto.CancelOrderRequest,
      Tiapi.Proto.CancelOrderResponse

  rpc :GetSandboxOrderState,
      Tiapi.Proto.GetOrderStateRequest,
      Tiapi.Proto.OrderState

  rpc :GetSandboxPositions,
      Tiapi.Proto.PositionsRequest,
      Tiapi.Proto.PositionsResponse

  rpc :GetSandboxOperations,
      Tiapi.Proto.OperationsRequest,
      Tiapi.Proto.OperationsResponse

  rpc :GetSandboxOperationsByCursor,
      Tiapi.Proto.GetOperationsByCursorRequest,
      Tiapi.Proto.GetOperationsByCursorResponse

  rpc :GetSandboxPortfolio,
      Tiapi.Proto.PortfolioRequest,
      Tiapi.Proto.PortfolioResponse

  rpc :SandboxPayIn,
      Tiapi.Proto.SandboxPayInRequest,
      Tiapi.Proto.SandboxPayInResponse

  rpc :GetSandboxWithdrawLimits,
      Tiapi.Proto.WithdrawLimitsRequest,
      Tiapi.Proto.WithdrawLimitsResponse

  rpc :GetSandboxMaxLots,
      Tiapi.Proto.GetMaxLotsRequest,
      Tiapi.Proto.GetMaxLotsResponse
end

defmodule Tiapi.Proto.SandboxService.Stub do
  use GRPC.Stub, service: Tiapi.Proto.SandboxService.Service
end
