defmodule Tiapi.Proto.CouponType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :COUPON_TYPE_UNSPECIFIED, 0
  field :COUPON_TYPE_CONSTANT, 1
  field :COUPON_TYPE_FLOATING, 2
  field :COUPON_TYPE_DISCOUNT, 3
  field :COUPON_TYPE_MORTGAGE, 4
  field :COUPON_TYPE_FIX, 5
  field :COUPON_TYPE_VARIABLE, 6
  field :COUPON_TYPE_OTHER, 7
end

defmodule Tiapi.Proto.OptionDirection do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OPTION_DIRECTION_UNSPECIFIED, 0
  field :OPTION_DIRECTION_PUT, 1
  field :OPTION_DIRECTION_CALL, 2
end

defmodule Tiapi.Proto.OptionPaymentType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OPTION_PAYMENT_TYPE_UNSPECIFIED, 0
  field :OPTION_PAYMENT_TYPE_PREMIUM, 1
  field :OPTION_PAYMENT_TYPE_MARGINAL, 2
end

defmodule Tiapi.Proto.OptionStyle do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OPTION_STYLE_UNSPECIFIED, 0
  field :OPTION_STYLE_AMERICAN, 1
  field :OPTION_STYLE_EUROPEAN, 2
end

defmodule Tiapi.Proto.OptionSettlementType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OPTION_EXECUTION_TYPE_UNSPECIFIED, 0
  field :OPTION_EXECUTION_TYPE_PHYSICAL_DELIVERY, 1
  field :OPTION_EXECUTION_TYPE_CASH_SETTLEMENT, 2
end

defmodule Tiapi.Proto.InstrumentIdType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTRUMENT_ID_UNSPECIFIED, 0
  field :INSTRUMENT_ID_TYPE_FIGI, 1
  field :INSTRUMENT_ID_TYPE_TICKER, 2
  field :INSTRUMENT_ID_TYPE_UID, 3
  field :INSTRUMENT_ID_TYPE_POSITION_UID, 4
end

defmodule Tiapi.Proto.InstrumentStatus do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTRUMENT_STATUS_UNSPECIFIED, 0
  field :INSTRUMENT_STATUS_BASE, 1
  field :INSTRUMENT_STATUS_ALL, 2
end

defmodule Tiapi.Proto.ShareType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SHARE_TYPE_UNSPECIFIED, 0
  field :SHARE_TYPE_COMMON, 1
  field :SHARE_TYPE_PREFERRED, 2
  field :SHARE_TYPE_ADR, 3
  field :SHARE_TYPE_GDR, 4
  field :SHARE_TYPE_MLP, 5
  field :SHARE_TYPE_NY_REG_SHRS, 6
  field :SHARE_TYPE_CLOSED_END_FUND, 7
  field :SHARE_TYPE_REIT, 8
end

defmodule Tiapi.Proto.AssetType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ASSET_TYPE_UNSPECIFIED, 0
  field :ASSET_TYPE_CURRENCY, 1
  field :ASSET_TYPE_COMMODITY, 2
  field :ASSET_TYPE_INDEX, 3
  field :ASSET_TYPE_SECURITY, 4
end

defmodule Tiapi.Proto.StructuredProductType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SP_TYPE_UNSPECIFIED, 0
  field :SP_TYPE_DELIVERABLE, 1
  field :SP_TYPE_NON_DELIVERABLE, 2
end

defmodule Tiapi.Proto.EditFavoritesActionType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EDIT_FAVORITES_ACTION_TYPE_UNSPECIFIED, 0
  field :EDIT_FAVORITES_ACTION_TYPE_ADD, 1
  field :EDIT_FAVORITES_ACTION_TYPE_DEL, 2
end

defmodule Tiapi.Proto.RealExchange do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :REAL_EXCHANGE_UNSPECIFIED, 0
  field :REAL_EXCHANGE_MOEX, 1
  field :REAL_EXCHANGE_RTS, 2
  field :REAL_EXCHANGE_OTC, 3
  field :REAL_EXCHANGE_DEALER, 4
end

defmodule Tiapi.Proto.Recommendation do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RECOMMENDATION_UNSPECIFIED, 0
  field :RECOMMENDATION_BUY, 1
  field :RECOMMENDATION_HOLD, 2
  field :RECOMMENDATION_SELL, 3
end

defmodule Tiapi.Proto.RiskLevel do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RISK_LEVEL_UNSPECIFIED, 0
  field :RISK_LEVEL_LOW, 1
  field :RISK_LEVEL_MODERATE, 2
  field :RISK_LEVEL_HIGH, 3
end

defmodule Tiapi.Proto.BondType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BOND_TYPE_UNSPECIFIED, 0
  field :BOND_TYPE_REPLACED, 1
end

defmodule Tiapi.Proto.InstrumentExchangeType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INSTRUMENT_EXCHANGE_UNSPECIFIED, 0
  field :INSTRUMENT_EXCHANGE_DEALER, 1
end

defmodule Tiapi.Proto.GetBondEventsRequest.EventType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :EVENT_TYPE_CPN, 1
  field :EVENT_TYPE_CALL, 2
  field :EVENT_TYPE_MTY, 3
  field :EVENT_TYPE_CONV, 4
end

defmodule Tiapi.Proto.GetAssetReportsResponse.AssetReportPeriodType do
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PERIOD_TYPE_UNSPECIFIED, 0
  field :PERIOD_TYPE_QUARTER, 1
  field :PERIOD_TYPE_SEMIANNUAL, 2
  field :PERIOD_TYPE_ANNUAL, 3
end

defmodule Tiapi.Proto.TradingSchedulesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :exchange, 1, proto3_optional: true, type: :string
  field :from, 2, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :to, 3, proto3_optional: true, type: Google.Protobuf.Timestamp
end

defmodule Tiapi.Proto.TradingSchedulesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :exchanges, 1,
    repeated: true,
    type: Tiapi.Proto.TradingSchedule
end

defmodule Tiapi.Proto.TradingSchedule do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :exchange, 1, type: :string

  field :days, 2,
    repeated: true,
    type: Tiapi.Proto.TradingDay
end

defmodule Tiapi.Proto.TradingDay do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :date, 1, type: Google.Protobuf.Timestamp
  field :is_trading_day, 2, type: :bool, json_name: "isTradingDay"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :opening_auction_start_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "openingAuctionStartTime"

  field :closing_auction_end_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "closingAuctionEndTime"

  field :evening_opening_auction_start_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "eveningOpeningAuctionStartTime"

  field :evening_start_time, 10, type: Google.Protobuf.Timestamp, json_name: "eveningStartTime"
  field :evening_end_time, 11, type: Google.Protobuf.Timestamp, json_name: "eveningEndTime"
  field :clearing_start_time, 12, type: Google.Protobuf.Timestamp, json_name: "clearingStartTime"
  field :clearing_end_time, 13, type: Google.Protobuf.Timestamp, json_name: "clearingEndTime"

  field :premarket_start_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "premarketStartTime"

  field :premarket_end_time, 15, type: Google.Protobuf.Timestamp, json_name: "premarketEndTime"

  field :closing_auction_start_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "closingAuctionStartTime"

  field :opening_auction_end_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "openingAuctionEndTime"

  field :intervals, 18,
    repeated: true,
    type: Tiapi.Proto.TradingInterval
end

defmodule Tiapi.Proto.InstrumentRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id_type, 1,
    type: Tiapi.Proto.InstrumentIdType,
    json_name: "idType",
    enum: true,
    deprecated: false

  field :class_code, 2, proto3_optional: true, type: :string, json_name: "classCode"
  field :id, 3, type: :string, deprecated: false
end

defmodule Tiapi.Proto.InstrumentsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_status, 1,
    proto3_optional: true,
    type: Tiapi.Proto.InstrumentStatus,
    json_name: "instrumentStatus",
    enum: true

  field :instrument_exchange, 2,
    proto3_optional: true,
    type: Tiapi.Proto.InstrumentExchangeType,
    json_name: "instrumentExchange",
    enum: true
end

defmodule Tiapi.Proto.FilterOptionsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :basic_asset_uid, 1, proto3_optional: true, type: :string, json_name: "basicAssetUid"

  field :basic_asset_position_uid, 2,
    proto3_optional: true,
    type: :string,
    json_name: "basicAssetPositionUid"
end

defmodule Tiapi.Proto.BondResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Bond
end

defmodule Tiapi.Proto.BondsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.Bond
end

defmodule Tiapi.Proto.GetBondCouponsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :from, 2, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :to, 3, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :instrument_id, 4, type: :string, json_name: "instrumentId", deprecated: false
end

defmodule Tiapi.Proto.GetBondCouponsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :events, 1, repeated: true, type: Tiapi.Proto.Coupon
end

defmodule Tiapi.Proto.GetBondEventsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :from, 2, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :to, 3, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :instrument_id, 4, type: :string, json_name: "instrumentId", deprecated: false

  field :type, 5,
    type: Tiapi.Proto.GetBondEventsRequest.EventType,
    enum: true
end

defmodule Tiapi.Proto.GetBondEventsResponse.BondEvent do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 2, type: :string, json_name: "instrumentId"
  field :event_number, 3, type: :int32, json_name: "eventNumber"
  field :event_date, 4, type: Google.Protobuf.Timestamp, json_name: "eventDate"

  field :event_type, 5,
    type: Tiapi.Proto.GetBondEventsRequest.EventType,
    json_name: "eventType",
    enum: true

  field :event_total_vol, 6,
    type: Tiapi.Proto.Quotation,
    json_name: "eventTotalVol"

  field :fix_date, 7, type: Google.Protobuf.Timestamp, json_name: "fixDate"
  field :rate_date, 8, type: Google.Protobuf.Timestamp, json_name: "rateDate"
  field :default_date, 9, type: Google.Protobuf.Timestamp, json_name: "defaultDate"
  field :real_pay_date, 10, type: Google.Protobuf.Timestamp, json_name: "realPayDate"
  field :pay_date, 11, type: Google.Protobuf.Timestamp, json_name: "payDate"

  field :pay_one_bond, 12,
    type: Tiapi.Proto.MoneyValue,
    json_name: "payOneBond"

  field :money_flow_val, 13,
    type: Tiapi.Proto.MoneyValue,
    json_name: "moneyFlowVal"

  field :execution, 14, type: :string
  field :operation_type, 15, type: :string, json_name: "operationType"
  field :value, 16, type: Tiapi.Proto.Quotation
  field :note, 17, type: :string
  field :convert_to_fin_tool_id, 18, type: :string, json_name: "convertToFinToolId"
  field :coupon_start_date, 19, type: Google.Protobuf.Timestamp, json_name: "couponStartDate"
  field :coupon_end_date, 20, type: Google.Protobuf.Timestamp, json_name: "couponEndDate"
  field :coupon_period, 21, type: :int32, json_name: "couponPeriod"

  field :coupon_interest_rate, 22,
    type: Tiapi.Proto.Quotation,
    json_name: "couponInterestRate"
end

defmodule Tiapi.Proto.GetBondEventsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :events, 1,
    repeated: true,
    type: Tiapi.Proto.GetBondEventsResponse.BondEvent
end

defmodule Tiapi.Proto.Coupon do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :coupon_date, 2, type: Google.Protobuf.Timestamp, json_name: "couponDate"
  field :coupon_number, 3, type: :int64, json_name: "couponNumber"
  field :fix_date, 4, type: Google.Protobuf.Timestamp, json_name: "fixDate"

  field :pay_one_bond, 5,
    type: Tiapi.Proto.MoneyValue,
    json_name: "payOneBond"

  field :coupon_type, 6,
    type: Tiapi.Proto.CouponType,
    json_name: "couponType",
    enum: true

  field :coupon_start_date, 7, type: Google.Protobuf.Timestamp, json_name: "couponStartDate"
  field :coupon_end_date, 8, type: Google.Protobuf.Timestamp, json_name: "couponEndDate"
  field :coupon_period, 9, type: :int32, json_name: "couponPeriod"
end

defmodule Tiapi.Proto.CurrencyResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Currency
end

defmodule Tiapi.Proto.CurrenciesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.Currency
end

defmodule Tiapi.Proto.EtfResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Etf
end

defmodule Tiapi.Proto.EtfsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.Etf
end

defmodule Tiapi.Proto.FutureResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Future
end

defmodule Tiapi.Proto.FuturesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.Future
end

defmodule Tiapi.Proto.OptionResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Option
end

defmodule Tiapi.Proto.OptionsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.Option
end

defmodule Tiapi.Proto.Option do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :position_uid, 2, type: :string, json_name: "positionUid"
  field :ticker, 3, type: :string
  field :class_code, 4, type: :string, json_name: "classCode"
  field :basic_asset_position_uid, 5, type: :string, json_name: "basicAssetPositionUid"

  field :trading_status, 21,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :real_exchange, 31,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :direction, 41,
    type: Tiapi.Proto.OptionDirection,
    enum: true

  field :payment_type, 42,
    type: Tiapi.Proto.OptionPaymentType,
    json_name: "paymentType",
    enum: true

  field :style, 43,
    type: Tiapi.Proto.OptionStyle,
    enum: true

  field :settlement_type, 44,
    type: Tiapi.Proto.OptionSettlementType,
    json_name: "settlementType",
    enum: true

  field :name, 101, type: :string
  field :currency, 111, type: :string
  field :settlement_currency, 112, type: :string, json_name: "settlementCurrency"
  field :asset_type, 131, type: :string, json_name: "assetType"
  field :basic_asset, 132, type: :string, json_name: "basicAsset"
  field :exchange, 141, type: :string
  field :country_of_risk, 151, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 152, type: :string, json_name: "countryOfRiskName"
  field :sector, 161, type: :string
  field :brand, 162, type: Tiapi.Proto.BrandData
  field :lot, 201, type: :int32

  field :basic_asset_size, 211,
    type: Tiapi.Proto.Quotation,
    json_name: "basicAssetSize"

  field :klong, 221, type: Tiapi.Proto.Quotation
  field :kshort, 222, type: Tiapi.Proto.Quotation
  field :dlong, 223, type: Tiapi.Proto.Quotation
  field :dshort, 224, type: Tiapi.Proto.Quotation

  field :dlong_min, 225,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 226,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :min_price_increment, 231,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :strike_price, 241,
    type: Tiapi.Proto.MoneyValue,
    json_name: "strikePrice"

  field :expiration_date, 301, type: Google.Protobuf.Timestamp, json_name: "expirationDate"
  field :first_trade_date, 311, type: Google.Protobuf.Timestamp, json_name: "firstTradeDate"
  field :last_trade_date, 312, type: Google.Protobuf.Timestamp, json_name: "lastTradeDate"

  field :first_1min_candle_date, 321,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 322,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :short_enabled_flag, 401, type: :bool, json_name: "shortEnabledFlag"
  field :for_iis_flag, 402, type: :bool, json_name: "forIisFlag"
  field :otc_flag, 403, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 404, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 405, type: :bool, json_name: "sellAvailableFlag"
  field :for_qual_investor_flag, 406, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 407, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 408, type: :bool, json_name: "blockedTcaFlag"
  field :api_trade_available_flag, 409, type: :bool, json_name: "apiTradeAvailableFlag"
end

defmodule Tiapi.Proto.ShareResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Share
end

defmodule Tiapi.Proto.SharesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.Share
end

defmodule Tiapi.Proto.Bond do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :isin, 4, type: :string
  field :lot, 5, type: :int32
  field :currency, 6, type: :string
  field :klong, 7, type: Tiapi.Proto.Quotation
  field :kshort, 8, type: Tiapi.Proto.Quotation
  field :dlong, 9, type: Tiapi.Proto.Quotation
  field :dshort, 10, type: Tiapi.Proto.Quotation

  field :dlong_min, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :short_enabled_flag, 13, type: :bool, json_name: "shortEnabledFlag"
  field :name, 15, type: :string
  field :exchange, 16, type: :string
  field :coupon_quantity_per_year, 17, type: :int32, json_name: "couponQuantityPerYear"
  field :maturity_date, 18, type: Google.Protobuf.Timestamp, json_name: "maturityDate"
  field :nominal, 19, type: Tiapi.Proto.MoneyValue

  field :initial_nominal, 20,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialNominal"

  field :state_reg_date, 21, type: Google.Protobuf.Timestamp, json_name: "stateRegDate"
  field :placement_date, 22, type: Google.Protobuf.Timestamp, json_name: "placementDate"

  field :placement_price, 23,
    type: Tiapi.Proto.MoneyValue,
    json_name: "placementPrice"

  field :aci_value, 24,
    type: Tiapi.Proto.MoneyValue,
    json_name: "aciValue"

  field :country_of_risk, 25, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 26, type: :string, json_name: "countryOfRiskName"
  field :sector, 27, type: :string
  field :issue_kind, 28, type: :string, json_name: "issueKind"
  field :issue_size, 29, type: :int64, json_name: "issueSize"
  field :issue_size_plan, 30, type: :int64, json_name: "issueSizePlan"

  field :trading_status, 31,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :otc_flag, 32, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 33, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 34, type: :bool, json_name: "sellAvailableFlag"
  field :floating_coupon_flag, 35, type: :bool, json_name: "floatingCouponFlag"
  field :perpetual_flag, 36, type: :bool, json_name: "perpetualFlag"
  field :amortization_flag, 37, type: :bool, json_name: "amortizationFlag"

  field :min_price_increment, 38,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :api_trade_available_flag, 39, type: :bool, json_name: "apiTradeAvailableFlag"
  field :uid, 40, type: :string

  field :real_exchange, 41,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :position_uid, 42, type: :string, json_name: "positionUid"
  field :asset_uid, 43, type: :string, json_name: "assetUid"
  field :for_iis_flag, 51, type: :bool, json_name: "forIisFlag"
  field :for_qual_investor_flag, 52, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 53, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 54, type: :bool, json_name: "blockedTcaFlag"
  field :subordinated_flag, 55, type: :bool, json_name: "subordinatedFlag"
  field :liquidity_flag, 56, type: :bool, json_name: "liquidityFlag"

  field :first_1min_candle_date, 61,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 62,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :risk_level, 63,
    type: Tiapi.Proto.RiskLevel,
    json_name: "riskLevel",
    enum: true

  field :brand, 64, type: Tiapi.Proto.BrandData

  field :bond_type, 65,
    type: Tiapi.Proto.BondType,
    json_name: "bondType",
    enum: true
end

defmodule Tiapi.Proto.Currency do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :isin, 4, type: :string
  field :lot, 5, type: :int32
  field :currency, 6, type: :string
  field :klong, 7, type: Tiapi.Proto.Quotation
  field :kshort, 8, type: Tiapi.Proto.Quotation
  field :dlong, 9, type: Tiapi.Proto.Quotation
  field :dshort, 10, type: Tiapi.Proto.Quotation

  field :dlong_min, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :short_enabled_flag, 13, type: :bool, json_name: "shortEnabledFlag"
  field :name, 15, type: :string
  field :exchange, 16, type: :string
  field :nominal, 17, type: Tiapi.Proto.MoneyValue
  field :country_of_risk, 18, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 19, type: :string, json_name: "countryOfRiskName"

  field :trading_status, 20,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :otc_flag, 21, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 22, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 23, type: :bool, json_name: "sellAvailableFlag"
  field :iso_currency_name, 24, type: :string, json_name: "isoCurrencyName"

  field :min_price_increment, 25,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :api_trade_available_flag, 26, type: :bool, json_name: "apiTradeAvailableFlag"
  field :uid, 27, type: :string

  field :real_exchange, 28,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :position_uid, 29, type: :string, json_name: "positionUid"
  field :for_iis_flag, 41, type: :bool, json_name: "forIisFlag"
  field :for_qual_investor_flag, 52, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 53, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 54, type: :bool, json_name: "blockedTcaFlag"

  field :first_1min_candle_date, 56,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 57,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :brand, 60, type: Tiapi.Proto.BrandData
end

defmodule Tiapi.Proto.Etf do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :isin, 4, type: :string
  field :lot, 5, type: :int32
  field :currency, 6, type: :string
  field :klong, 7, type: Tiapi.Proto.Quotation
  field :kshort, 8, type: Tiapi.Proto.Quotation
  field :dlong, 9, type: Tiapi.Proto.Quotation
  field :dshort, 10, type: Tiapi.Proto.Quotation

  field :dlong_min, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :short_enabled_flag, 13, type: :bool, json_name: "shortEnabledFlag"
  field :name, 15, type: :string
  field :exchange, 16, type: :string

  field :fixed_commission, 17,
    type: Tiapi.Proto.Quotation,
    json_name: "fixedCommission"

  field :focus_type, 18, type: :string, json_name: "focusType"
  field :released_date, 19, type: Google.Protobuf.Timestamp, json_name: "releasedDate"

  field :num_shares, 20,
    type: Tiapi.Proto.Quotation,
    json_name: "numShares"

  field :country_of_risk, 21, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 22, type: :string, json_name: "countryOfRiskName"
  field :sector, 23, type: :string
  field :rebalancing_freq, 24, type: :string, json_name: "rebalancingFreq"

  field :trading_status, 25,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :otc_flag, 26, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 27, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 28, type: :bool, json_name: "sellAvailableFlag"

  field :min_price_increment, 29,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :api_trade_available_flag, 30, type: :bool, json_name: "apiTradeAvailableFlag"
  field :uid, 31, type: :string

  field :real_exchange, 32,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :position_uid, 33, type: :string, json_name: "positionUid"
  field :asset_uid, 34, type: :string, json_name: "assetUid"

  field :instrument_exchange, 35,
    type: Tiapi.Proto.InstrumentExchangeType,
    json_name: "instrumentExchange",
    enum: true

  field :for_iis_flag, 41, type: :bool, json_name: "forIisFlag"
  field :for_qual_investor_flag, 42, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 43, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 44, type: :bool, json_name: "blockedTcaFlag"
  field :liquidity_flag, 45, type: :bool, json_name: "liquidityFlag"

  field :first_1min_candle_date, 56,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 57,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :brand, 60, type: Tiapi.Proto.BrandData
end

defmodule Tiapi.Proto.Future do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :lot, 4, type: :int32
  field :currency, 5, type: :string
  field :klong, 6, type: Tiapi.Proto.Quotation
  field :kshort, 7, type: Tiapi.Proto.Quotation
  field :dlong, 8, type: Tiapi.Proto.Quotation
  field :dshort, 9, type: Tiapi.Proto.Quotation

  field :dlong_min, 10,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :short_enabled_flag, 12, type: :bool, json_name: "shortEnabledFlag"
  field :name, 13, type: :string
  field :exchange, 14, type: :string
  field :first_trade_date, 15, type: Google.Protobuf.Timestamp, json_name: "firstTradeDate"
  field :last_trade_date, 16, type: Google.Protobuf.Timestamp, json_name: "lastTradeDate"
  field :futures_type, 17, type: :string, json_name: "futuresType"
  field :asset_type, 18, type: :string, json_name: "assetType"
  field :basic_asset, 19, type: :string, json_name: "basicAsset"

  field :basic_asset_size, 20,
    type: Tiapi.Proto.Quotation,
    json_name: "basicAssetSize"

  field :country_of_risk, 21, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 22, type: :string, json_name: "countryOfRiskName"
  field :sector, 23, type: :string
  field :expiration_date, 24, type: Google.Protobuf.Timestamp, json_name: "expirationDate"

  field :trading_status, 25,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :otc_flag, 26, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 27, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 28, type: :bool, json_name: "sellAvailableFlag"

  field :min_price_increment, 29,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :api_trade_available_flag, 30, type: :bool, json_name: "apiTradeAvailableFlag"
  field :uid, 31, type: :string

  field :real_exchange, 32,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :position_uid, 33, type: :string, json_name: "positionUid"
  field :basic_asset_position_uid, 34, type: :string, json_name: "basicAssetPositionUid"
  field :for_iis_flag, 41, type: :bool, json_name: "forIisFlag"
  field :for_qual_investor_flag, 42, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 43, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 44, type: :bool, json_name: "blockedTcaFlag"

  field :first_1min_candle_date, 56,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 57,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :initial_margin_on_buy, 61,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialMarginOnBuy"

  field :initial_margin_on_sell, 62,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialMarginOnSell"

  field :min_price_increment_amount, 63,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrementAmount"

  field :brand, 64, type: Tiapi.Proto.BrandData
end

defmodule Tiapi.Proto.Share do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :isin, 4, type: :string
  field :lot, 5, type: :int32
  field :currency, 6, type: :string
  field :klong, 7, type: Tiapi.Proto.Quotation
  field :kshort, 8, type: Tiapi.Proto.Quotation
  field :dlong, 9, type: Tiapi.Proto.Quotation
  field :dshort, 10, type: Tiapi.Proto.Quotation

  field :dlong_min, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :short_enabled_flag, 13, type: :bool, json_name: "shortEnabledFlag"
  field :name, 15, type: :string
  field :exchange, 16, type: :string
  field :ipo_date, 17, type: Google.Protobuf.Timestamp, json_name: "ipoDate"
  field :issue_size, 18, type: :int64, json_name: "issueSize"
  field :country_of_risk, 19, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 20, type: :string, json_name: "countryOfRiskName"
  field :sector, 21, type: :string
  field :issue_size_plan, 22, type: :int64, json_name: "issueSizePlan"
  field :nominal, 23, type: Tiapi.Proto.MoneyValue

  field :trading_status, 25,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :otc_flag, 26, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 27, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 28, type: :bool, json_name: "sellAvailableFlag"
  field :div_yield_flag, 29, type: :bool, json_name: "divYieldFlag"

  field :share_type, 30,
    type: Tiapi.Proto.ShareType,
    json_name: "shareType",
    enum: true

  field :min_price_increment, 31,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :api_trade_available_flag, 32, type: :bool, json_name: "apiTradeAvailableFlag"
  field :uid, 33, type: :string

  field :real_exchange, 34,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :position_uid, 35, type: :string, json_name: "positionUid"
  field :asset_uid, 36, type: :string, json_name: "assetUid"

  field :instrument_exchange, 37,
    type: Tiapi.Proto.InstrumentExchangeType,
    json_name: "instrumentExchange",
    enum: true

  field :for_iis_flag, 46, type: :bool, json_name: "forIisFlag"
  field :for_qual_investor_flag, 47, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 48, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 49, type: :bool, json_name: "blockedTcaFlag"
  field :liquidity_flag, 50, type: :bool, json_name: "liquidityFlag"

  field :first_1min_candle_date, 56,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 57,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :brand, 60, type: Tiapi.Proto.BrandData
end

defmodule Tiapi.Proto.GetAccruedInterestsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :from, 2, type: Google.Protobuf.Timestamp, deprecated: false
  field :to, 3, type: Google.Protobuf.Timestamp, deprecated: false
  field :instrument_id, 4, type: :string, json_name: "instrumentId", deprecated: false
end

defmodule Tiapi.Proto.GetAccruedInterestsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accrued_interests, 1,
    repeated: true,
    type: Tiapi.Proto.AccruedInterest,
    json_name: "accruedInterests"
end

defmodule Tiapi.Proto.AccruedInterest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :date, 1, type: Google.Protobuf.Timestamp
  field :value, 2, type: Tiapi.Proto.Quotation

  field :value_percent, 3,
    type: Tiapi.Proto.Quotation,
    json_name: "valuePercent"

  field :nominal, 4, type: Tiapi.Proto.Quotation
end

defmodule Tiapi.Proto.GetFuturesMarginRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :instrument_id, 4, type: :string, json_name: "instrumentId", deprecated: false
end

defmodule Tiapi.Proto.GetFuturesMarginResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :initial_margin_on_buy, 1,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialMarginOnBuy"

  field :initial_margin_on_sell, 2,
    type: Tiapi.Proto.MoneyValue,
    json_name: "initialMarginOnSell"

  field :min_price_increment, 3,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :min_price_increment_amount, 4,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrementAmount"
end

defmodule Tiapi.Proto.InstrumentResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument, 1, type: Tiapi.Proto.Instrument
end

defmodule Tiapi.Proto.Instrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :isin, 4, type: :string
  field :lot, 5, type: :int32
  field :currency, 6, type: :string
  field :klong, 7, type: Tiapi.Proto.Quotation
  field :kshort, 8, type: Tiapi.Proto.Quotation
  field :dlong, 9, type: Tiapi.Proto.Quotation
  field :dshort, 10, type: Tiapi.Proto.Quotation

  field :dlong_min, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "dlongMin"

  field :dshort_min, 12,
    type: Tiapi.Proto.Quotation,
    json_name: "dshortMin"

  field :short_enabled_flag, 13, type: :bool, json_name: "shortEnabledFlag"
  field :name, 14, type: :string
  field :exchange, 15, type: :string
  field :country_of_risk, 16, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 17, type: :string, json_name: "countryOfRiskName"
  field :instrument_type, 18, type: :string, json_name: "instrumentType"

  field :trading_status, 19,
    type: Tiapi.Proto.SecurityTradingStatus,
    json_name: "tradingStatus",
    enum: true

  field :otc_flag, 20, type: :bool, json_name: "otcFlag"
  field :buy_available_flag, 21, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 22, type: :bool, json_name: "sellAvailableFlag"

  field :min_price_increment, 23,
    type: Tiapi.Proto.Quotation,
    json_name: "minPriceIncrement"

  field :api_trade_available_flag, 24, type: :bool, json_name: "apiTradeAvailableFlag"
  field :uid, 25, type: :string

  field :real_exchange, 26,
    type: Tiapi.Proto.RealExchange,
    json_name: "realExchange",
    enum: true

  field :position_uid, 27, type: :string, json_name: "positionUid"
  field :asset_uid, 28, type: :string, json_name: "assetUid"
  field :for_iis_flag, 36, type: :bool, json_name: "forIisFlag"
  field :for_qual_investor_flag, 37, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 38, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 39, type: :bool, json_name: "blockedTcaFlag"

  field :instrument_kind, 40,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true

  field :first_1min_candle_date, 56,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 57,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :brand, 60, type: Tiapi.Proto.BrandData
end

defmodule Tiapi.Proto.GetDividendsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string, deprecated: true
  field :from, 2, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :to, 3, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :instrument_id, 4, type: :string, json_name: "instrumentId", deprecated: false
end

defmodule Tiapi.Proto.GetDividendsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dividends, 1,
    repeated: true,
    type: Tiapi.Proto.Dividend
end

defmodule Tiapi.Proto.Dividend do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dividend_net, 1,
    type: Tiapi.Proto.MoneyValue,
    json_name: "dividendNet"

  field :payment_date, 2, type: Google.Protobuf.Timestamp, json_name: "paymentDate"
  field :declared_date, 3, type: Google.Protobuf.Timestamp, json_name: "declaredDate"
  field :last_buy_date, 4, type: Google.Protobuf.Timestamp, json_name: "lastBuyDate"
  field :dividend_type, 5, type: :string, json_name: "dividendType"
  field :record_date, 6, type: Google.Protobuf.Timestamp, json_name: "recordDate"
  field :regularity, 7, type: :string

  field :close_price, 8,
    type: Tiapi.Proto.MoneyValue,
    json_name: "closePrice"

  field :yield_value, 9,
    type: Tiapi.Proto.Quotation,
    json_name: "yieldValue"

  field :created_at, 10, type: Google.Protobuf.Timestamp, json_name: "createdAt"
end

defmodule Tiapi.Proto.AssetRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Tiapi.Proto.AssetResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :asset, 1, type: Tiapi.Proto.AssetFull
end

defmodule Tiapi.Proto.AssetsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_type, 1,
    proto3_optional: true,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentType",
    enum: true
end

defmodule Tiapi.Proto.AssetsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :assets, 1, repeated: true, type: Tiapi.Proto.Asset
end

defmodule Tiapi.Proto.AssetFull do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :ext, 0

  field :uid, 1, type: :string
  field :type, 2, type: Tiapi.Proto.AssetType, enum: true
  field :name, 3, type: :string
  field :name_brief, 4, type: :string, json_name: "nameBrief"
  field :description, 5, type: :string
  field :deleted_at, 6, type: Google.Protobuf.Timestamp, json_name: "deletedAt"
  field :required_tests, 7, repeated: true, type: :string, json_name: "requiredTests"

  field :currency, 8,
    type: Tiapi.Proto.AssetCurrency,
    oneof: 0

  field :security, 9,
    type: Tiapi.Proto.AssetSecurity,
    oneof: 0

  field :gos_reg_code, 10, type: :string, json_name: "gosRegCode"
  field :cfi, 11, type: :string
  field :code_nsd, 12, type: :string, json_name: "codeNsd"
  field :status, 13, type: :string
  field :brand, 14, type: Tiapi.Proto.Brand
  field :updated_at, 15, type: Google.Protobuf.Timestamp, json_name: "updatedAt"
  field :br_code, 16, type: :string, json_name: "brCode"
  field :br_code_name, 17, type: :string, json_name: "brCodeName"

  field :instruments, 18,
    repeated: true,
    type: Tiapi.Proto.AssetInstrument
end

defmodule Tiapi.Proto.Asset do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :type, 2, type: Tiapi.Proto.AssetType, enum: true
  field :name, 3, type: :string

  field :instruments, 4,
    repeated: true,
    type: Tiapi.Proto.AssetInstrument
end

defmodule Tiapi.Proto.AssetCurrency do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :base_currency, 1, type: :string, json_name: "baseCurrency"
end

defmodule Tiapi.Proto.AssetSecurity do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :ext, 0

  field :isin, 1, type: :string
  field :type, 2, type: :string

  field :instrument_kind, 10,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true

  field :share, 3, type: Tiapi.Proto.AssetShare, oneof: 0
  field :bond, 4, type: Tiapi.Proto.AssetBond, oneof: 0

  field :sp, 5,
    type: Tiapi.Proto.AssetStructuredProduct,
    oneof: 0

  field :etf, 6, type: Tiapi.Proto.AssetEtf, oneof: 0

  field :clearing_certificate, 7,
    type: Tiapi.Proto.AssetClearingCertificate,
    json_name: "clearingCertificate",
    oneof: 0
end

defmodule Tiapi.Proto.AssetShare do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Tiapi.Proto.ShareType, enum: true

  field :issue_size, 2,
    type: Tiapi.Proto.Quotation,
    json_name: "issueSize"

  field :nominal, 3, type: Tiapi.Proto.Quotation
  field :nominal_currency, 4, type: :string, json_name: "nominalCurrency"
  field :primary_index, 5, type: :string, json_name: "primaryIndex"

  field :dividend_rate, 6,
    type: Tiapi.Proto.Quotation,
    json_name: "dividendRate"

  field :preferred_share_type, 7, type: :string, json_name: "preferredShareType"
  field :ipo_date, 8, type: Google.Protobuf.Timestamp, json_name: "ipoDate"
  field :registry_date, 9, type: Google.Protobuf.Timestamp, json_name: "registryDate"
  field :div_yield_flag, 10, type: :bool, json_name: "divYieldFlag"
  field :issue_kind, 11, type: :string, json_name: "issueKind"
  field :placement_date, 12, type: Google.Protobuf.Timestamp, json_name: "placementDate"
  field :repres_isin, 13, type: :string, json_name: "represIsin"

  field :issue_size_plan, 14,
    type: Tiapi.Proto.Quotation,
    json_name: "issueSizePlan"

  field :total_float, 15,
    type: Tiapi.Proto.Quotation,
    json_name: "totalFloat"
end

defmodule Tiapi.Proto.AssetBond do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :current_nominal, 1,
    type: Tiapi.Proto.Quotation,
    json_name: "currentNominal"

  field :borrow_name, 2, type: :string, json_name: "borrowName"

  field :issue_size, 3,
    type: Tiapi.Proto.Quotation,
    json_name: "issueSize"

  field :nominal, 4, type: Tiapi.Proto.Quotation
  field :nominal_currency, 5, type: :string, json_name: "nominalCurrency"
  field :issue_kind, 6, type: :string, json_name: "issueKind"
  field :interest_kind, 7, type: :string, json_name: "interestKind"
  field :coupon_quantity_per_year, 8, type: :int32, json_name: "couponQuantityPerYear"
  field :indexed_nominal_flag, 9, type: :bool, json_name: "indexedNominalFlag"
  field :subordinated_flag, 10, type: :bool, json_name: "subordinatedFlag"
  field :collateral_flag, 11, type: :bool, json_name: "collateralFlag"
  field :tax_free_flag, 12, type: :bool, json_name: "taxFreeFlag"
  field :amortization_flag, 13, type: :bool, json_name: "amortizationFlag"
  field :floating_coupon_flag, 14, type: :bool, json_name: "floatingCouponFlag"
  field :perpetual_flag, 15, type: :bool, json_name: "perpetualFlag"
  field :maturity_date, 16, type: Google.Protobuf.Timestamp, json_name: "maturityDate"
  field :return_condition, 17, type: :string, json_name: "returnCondition"
  field :state_reg_date, 18, type: Google.Protobuf.Timestamp, json_name: "stateRegDate"
  field :placement_date, 19, type: Google.Protobuf.Timestamp, json_name: "placementDate"

  field :placement_price, 20,
    type: Tiapi.Proto.Quotation,
    json_name: "placementPrice"

  field :issue_size_plan, 21,
    type: Tiapi.Proto.Quotation,
    json_name: "issueSizePlan"
end

defmodule Tiapi.Proto.AssetStructuredProduct do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :borrow_name, 1, type: :string, json_name: "borrowName"
  field :nominal, 2, type: Tiapi.Proto.Quotation
  field :nominal_currency, 3, type: :string, json_name: "nominalCurrency"

  field :type, 4,
    type: Tiapi.Proto.StructuredProductType,
    enum: true

  field :logic_portfolio, 5, type: :string, json_name: "logicPortfolio"

  field :asset_type, 6,
    type: Tiapi.Proto.AssetType,
    json_name: "assetType",
    enum: true

  field :basic_asset, 7, type: :string, json_name: "basicAsset"

  field :safety_barrier, 8,
    type: Tiapi.Proto.Quotation,
    json_name: "safetyBarrier"

  field :maturity_date, 9, type: Google.Protobuf.Timestamp, json_name: "maturityDate"

  field :issue_size_plan, 10,
    type: Tiapi.Proto.Quotation,
    json_name: "issueSizePlan"

  field :issue_size, 11,
    type: Tiapi.Proto.Quotation,
    json_name: "issueSize"

  field :placement_date, 12, type: Google.Protobuf.Timestamp, json_name: "placementDate"
  field :issue_kind, 13, type: :string, json_name: "issueKind"
end

defmodule Tiapi.Proto.AssetEtf do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_expense, 1,
    type: Tiapi.Proto.Quotation,
    json_name: "totalExpense"

  field :hurdle_rate, 2,
    type: Tiapi.Proto.Quotation,
    json_name: "hurdleRate"

  field :performance_fee, 3,
    type: Tiapi.Proto.Quotation,
    json_name: "performanceFee"

  field :fixed_commission, 4,
    type: Tiapi.Proto.Quotation,
    json_name: "fixedCommission"

  field :payment_type, 5, type: :string, json_name: "paymentType"
  field :watermark_flag, 6, type: :bool, json_name: "watermarkFlag"

  field :buy_premium, 7,
    type: Tiapi.Proto.Quotation,
    json_name: "buyPremium"

  field :sell_discount, 8,
    type: Tiapi.Proto.Quotation,
    json_name: "sellDiscount"

  field :rebalancing_flag, 9, type: :bool, json_name: "rebalancingFlag"
  field :rebalancing_freq, 10, type: :string, json_name: "rebalancingFreq"
  field :management_type, 11, type: :string, json_name: "managementType"
  field :primary_index, 12, type: :string, json_name: "primaryIndex"
  field :focus_type, 13, type: :string, json_name: "focusType"
  field :leveraged_flag, 14, type: :bool, json_name: "leveragedFlag"

  field :num_share, 15,
    type: Tiapi.Proto.Quotation,
    json_name: "numShare"

  field :ucits_flag, 16, type: :bool, json_name: "ucitsFlag"
  field :released_date, 17, type: Google.Protobuf.Timestamp, json_name: "releasedDate"
  field :description, 18, type: :string
  field :primary_index_description, 19, type: :string, json_name: "primaryIndexDescription"
  field :primary_index_company, 20, type: :string, json_name: "primaryIndexCompany"

  field :index_recovery_period, 21,
    type: Tiapi.Proto.Quotation,
    json_name: "indexRecoveryPeriod"

  field :inav_code, 22, type: :string, json_name: "inavCode"
  field :div_yield_flag, 23, type: :bool, json_name: "divYieldFlag"

  field :expense_commission, 24,
    type: Tiapi.Proto.Quotation,
    json_name: "expenseCommission"

  field :primary_index_tracking_error, 25,
    type: Tiapi.Proto.Quotation,
    json_name: "primaryIndexTrackingError"

  field :rebalancing_plan, 26, type: :string, json_name: "rebalancingPlan"
  field :tax_rate, 27, type: :string, json_name: "taxRate"

  field :rebalancing_dates, 28,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "rebalancingDates"

  field :issue_kind, 29, type: :string, json_name: "issueKind"
  field :nominal, 30, type: Tiapi.Proto.Quotation
  field :nominal_currency, 31, type: :string, json_name: "nominalCurrency"
end

defmodule Tiapi.Proto.AssetClearingCertificate do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :nominal, 1, type: Tiapi.Proto.Quotation
  field :nominal_currency, 2, type: :string, json_name: "nominalCurrency"
end

defmodule Tiapi.Proto.Brand do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :name, 2, type: :string
  field :description, 3, type: :string
  field :info, 4, type: :string
  field :company, 5, type: :string
  field :sector, 6, type: :string
  field :country_of_risk, 7, type: :string, json_name: "countryOfRisk"
  field :country_of_risk_name, 8, type: :string, json_name: "countryOfRiskName"
end

defmodule Tiapi.Proto.AssetInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :figi, 2, type: :string
  field :instrument_type, 3, type: :string, json_name: "instrumentType"
  field :ticker, 4, type: :string
  field :class_code, 5, type: :string, json_name: "classCode"

  field :links, 6,
    repeated: true,
    type: Tiapi.Proto.InstrumentLink

  field :instrument_kind, 10,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true

  field :position_uid, 11, type: :string, json_name: "positionUid"
end

defmodule Tiapi.Proto.InstrumentLink do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string
  field :instrument_uid, 2, type: :string, json_name: "instrumentUid"
end

defmodule Tiapi.Proto.GetFavoritesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.GetFavoritesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :favorite_instruments, 1,
    repeated: true,
    type: Tiapi.Proto.FavoriteInstrument,
    json_name: "favoriteInstruments"
end

defmodule Tiapi.Proto.FavoriteInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :isin, 4, type: :string
  field :instrument_type, 11, type: :string, json_name: "instrumentType"
  field :name, 12, type: :string
  field :uid, 13, type: :string
  field :otc_flag, 16, type: :bool, json_name: "otcFlag"
  field :api_trade_available_flag, 17, type: :bool, json_name: "apiTradeAvailableFlag"

  field :instrument_kind, 18,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true
end

defmodule Tiapi.Proto.EditFavoritesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.EditFavoritesRequestInstrument,
    deprecated: false

  field :action_type, 6,
    type: Tiapi.Proto.EditFavoritesActionType,
    json_name: "actionType",
    enum: true,
    deprecated: false
end

defmodule Tiapi.Proto.EditFavoritesRequestInstrument do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, proto3_optional: true, type: :string, deprecated: true
  field :instrument_id, 2, type: :string, json_name: "instrumentId", deprecated: false
end

defmodule Tiapi.Proto.EditFavoritesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :favorite_instruments, 1,
    repeated: true,
    type: Tiapi.Proto.FavoriteInstrument,
    json_name: "favoriteInstruments"
end

defmodule Tiapi.Proto.GetCountriesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.GetCountriesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :countries, 1,
    repeated: true,
    type: Tiapi.Proto.CountryResponse
end

defmodule Tiapi.Proto.IndicativesRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Tiapi.Proto.IndicativesResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.IndicativeResponse
end

defmodule Tiapi.Proto.IndicativeResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :figi, 1, type: :string
  field :ticker, 2, type: :string
  field :class_code, 3, type: :string, json_name: "classCode"
  field :currency, 4, type: :string

  field :instrument_kind, 10,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true

  field :name, 12, type: :string
  field :exchange, 13, type: :string
  field :uid, 14, type: :string
  field :buy_available_flag, 404, type: :bool, json_name: "buyAvailableFlag"
  field :sell_available_flag, 405, type: :bool, json_name: "sellAvailableFlag"
end

defmodule Tiapi.Proto.CountryResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :alfa_two, 1, type: :string, json_name: "alfaTwo"
  field :alfa_three, 2, type: :string, json_name: "alfaThree"
  field :name, 3, type: :string
  field :name_brief, 4, type: :string, json_name: "nameBrief"
end

defmodule Tiapi.Proto.FindInstrumentRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false

  field :instrument_kind, 2,
    proto3_optional: true,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true

  field :api_trade_available_flag, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "apiTradeAvailableFlag"
end

defmodule Tiapi.Proto.FindInstrumentResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruments, 1,
    repeated: true,
    type: Tiapi.Proto.InstrumentShort
end

defmodule Tiapi.Proto.InstrumentShort do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :isin, 1, type: :string
  field :figi, 2, type: :string
  field :ticker, 3, type: :string
  field :class_code, 4, type: :string, json_name: "classCode"
  field :instrument_type, 5, type: :string, json_name: "instrumentType"
  field :name, 6, type: :string
  field :uid, 7, type: :string
  field :position_uid, 8, type: :string, json_name: "positionUid"

  field :instrument_kind, 10,
    type: Tiapi.Proto.InstrumentType,
    json_name: "instrumentKind",
    enum: true

  field :api_trade_available_flag, 11, type: :bool, json_name: "apiTradeAvailableFlag"
  field :for_iis_flag, 12, type: :bool, json_name: "forIisFlag"

  field :first_1min_candle_date, 26,
    type: Google.Protobuf.Timestamp,
    json_name: "first1minCandleDate"

  field :first_1day_candle_date, 27,
    type: Google.Protobuf.Timestamp,
    json_name: "first1dayCandleDate"

  field :for_qual_investor_flag, 28, type: :bool, json_name: "forQualInvestorFlag"
  field :weekend_flag, 29, type: :bool, json_name: "weekendFlag"
  field :blocked_tca_flag, 30, type: :bool, json_name: "blockedTcaFlag"
  field :lot, 31, type: :int32
end

defmodule Tiapi.Proto.GetBrandsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :paging, 1, type: Tiapi.Proto.Page
end

defmodule Tiapi.Proto.GetBrandRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Tiapi.Proto.GetBrandsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :brands, 1, repeated: true, type: Tiapi.Proto.Brand
  field :paging, 2, type: Tiapi.Proto.PageResponse
end

defmodule Tiapi.Proto.GetAssetFundamentalsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :assets, 1, repeated: true, type: :string, deprecated: false
end

defmodule Tiapi.Proto.GetAssetFundamentalsResponse.StatisticResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :asset_uid, 1, type: :string, json_name: "assetUid"
  field :currency, 2, type: :string
  field :market_capitalization, 3, type: :double, json_name: "marketCapitalization"
  field :high_price_last_52_weeks, 4, type: :double, json_name: "highPriceLast52Weeks"
  field :low_price_last_52_weeks, 5, type: :double, json_name: "lowPriceLast52Weeks"

  field :average_daily_volume_last_10_days, 6,
    type: :double,
    json_name: "averageDailyVolumeLast10Days"

  field :average_daily_volume_last_4_weeks, 7,
    type: :double,
    json_name: "averageDailyVolumeLast4Weeks"

  field :beta, 8, type: :double
  field :free_float, 9, type: :double, json_name: "freeFloat"
  field :forward_annual_dividend_yield, 10, type: :double, json_name: "forwardAnnualDividendYield"
  field :shares_outstanding, 11, type: :double, json_name: "sharesOutstanding"
  field :revenue_ttm, 12, type: :double, json_name: "revenueTtm"
  field :ebitda_ttm, 13, type: :double, json_name: "ebitdaTtm"
  field :net_income_ttm, 14, type: :double, json_name: "netIncomeTtm"
  field :eps_ttm, 15, type: :double, json_name: "epsTtm"
  field :diluted_eps_ttm, 16, type: :double, json_name: "dilutedEpsTtm"
  field :free_cash_flow_ttm, 17, type: :double, json_name: "freeCashFlowTtm"

  field :five_year_annual_revenue_growth_rate, 18,
    type: :double,
    json_name: "fiveYearAnnualRevenueGrowthRate"

  field :three_year_annual_revenue_growth_rate, 19,
    type: :double,
    json_name: "threeYearAnnualRevenueGrowthRate"

  field :pe_ratio_ttm, 20, type: :double, json_name: "peRatioTtm"
  field :price_to_sales_ttm, 21, type: :double, json_name: "priceToSalesTtm"
  field :price_to_book_ttm, 22, type: :double, json_name: "priceToBookTtm"
  field :price_to_free_cash_flow_ttm, 23, type: :double, json_name: "priceToFreeCashFlowTtm"
  field :total_enterprise_value_mrq, 24, type: :double, json_name: "totalEnterpriseValueMrq"
  field :ev_to_ebitda_mrq, 25, type: :double, json_name: "evToEbitdaMrq"
  field :net_margin_mrq, 26, type: :double, json_name: "netMarginMrq"
  field :net_interest_margin_mrq, 27, type: :double, json_name: "netInterestMarginMrq"
  field :roe, 28, type: :double
  field :roa, 29, type: :double
  field :roic, 30, type: :double
  field :total_debt_mrq, 31, type: :double, json_name: "totalDebtMrq"
  field :total_debt_to_equity_mrq, 32, type: :double, json_name: "totalDebtToEquityMrq"
  field :total_debt_to_ebitda_mrq, 33, type: :double, json_name: "totalDebtToEbitdaMrq"
  field :free_cash_flow_to_price, 34, type: :double, json_name: "freeCashFlowToPrice"
  field :net_debt_to_ebitda, 35, type: :double, json_name: "netDebtToEbitda"
  field :current_ratio_mrq, 36, type: :double, json_name: "currentRatioMrq"

  field :fixed_charge_coverage_ratio_fy, 37,
    type: :double,
    json_name: "fixedChargeCoverageRatioFy"

  field :dividend_yield_daily_ttm, 38, type: :double, json_name: "dividendYieldDailyTtm"
  field :dividend_rate_ttm, 39, type: :double, json_name: "dividendRateTtm"
  field :dividends_per_share, 40, type: :double, json_name: "dividendsPerShare"

  field :five_years_average_dividend_yield, 41,
    type: :double,
    json_name: "fiveYearsAverageDividendYield"

  field :five_year_annual_dividend_growth_rate, 42,
    type: :double,
    json_name: "fiveYearAnnualDividendGrowthRate"

  field :dividend_payout_ratio_fy, 43, type: :double, json_name: "dividendPayoutRatioFy"
  field :buy_back_ttm, 44, type: :double, json_name: "buyBackTtm"

  field :one_year_annual_revenue_growth_rate, 45,
    type: :double,
    json_name: "oneYearAnnualRevenueGrowthRate"

  field :domicile_indicator_code, 46, type: :string, json_name: "domicileIndicatorCode"
  field :adr_to_common_share_ratio, 47, type: :double, json_name: "adrToCommonShareRatio"
  field :number_of_employees, 48, type: :double, json_name: "numberOfEmployees"
  field :ex_dividend_date, 49, type: Google.Protobuf.Timestamp, json_name: "exDividendDate"

  field :fiscal_period_start_date, 50,
    type: Google.Protobuf.Timestamp,
    json_name: "fiscalPeriodStartDate"

  field :fiscal_period_end_date, 51,
    type: Google.Protobuf.Timestamp,
    json_name: "fiscalPeriodEndDate"

  field :revenue_change_five_years, 53, type: :double, json_name: "revenueChangeFiveYears"
  field :eps_change_five_years, 54, type: :double, json_name: "epsChangeFiveYears"
  field :ebitda_change_five_years, 55, type: :double, json_name: "ebitdaChangeFiveYears"
  field :total_debt_change_five_years, 56, type: :double, json_name: "totalDebtChangeFiveYears"
  field :ev_to_sales, 57, type: :double, json_name: "evToSales"
end

defmodule Tiapi.Proto.GetAssetFundamentalsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :fundamentals, 1,
    repeated: true,
    type:
      Tiapi.Proto.GetAssetFundamentalsResponse.StatisticResponse
end

defmodule Tiapi.Proto.GetAssetReportsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 1, type: :string, json_name: "instrumentId", deprecated: false
  field :from, 2, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :to, 3, proto3_optional: true, type: Google.Protobuf.Timestamp
end

defmodule Tiapi.Proto.GetAssetReportsResponse.GetAssetReportsEvent do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 1, type: :string, json_name: "instrumentId"
  field :report_date, 2, type: Google.Protobuf.Timestamp, json_name: "reportDate"
  field :period_year, 3, type: :int32, json_name: "periodYear"
  field :period_num, 4, type: :int32, json_name: "periodNum"

  field :period_type, 5,
    type:
      Tiapi.Proto.GetAssetReportsResponse.AssetReportPeriodType,
    json_name: "periodType",
    enum: true

  field :created_at, 6, type: Google.Protobuf.Timestamp, json_name: "createdAt"
end

defmodule Tiapi.Proto.GetAssetReportsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :events, 1,
    repeated: true,
    type:
      Tiapi.Proto.GetAssetReportsResponse.GetAssetReportsEvent
end

defmodule Tiapi.Proto.GetConsensusForecastsRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :paging, 1,
    proto3_optional: true,
    type: Tiapi.Proto.Page
end

defmodule Tiapi.Proto.GetConsensusForecastsResponse.ConsensusForecastsItem do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :asset_uid, 2, type: :string, json_name: "assetUid"
  field :created_at, 3, type: Google.Protobuf.Timestamp, json_name: "createdAt"

  field :best_target_price, 4,
    type: Tiapi.Proto.Quotation,
    json_name: "bestTargetPrice"

  field :best_target_low, 5,
    type: Tiapi.Proto.Quotation,
    json_name: "bestTargetLow"

  field :best_target_high, 6,
    type: Tiapi.Proto.Quotation,
    json_name: "bestTargetHigh"

  field :total_buy_recommend, 7, type: :int32, json_name: "totalBuyRecommend"
  field :total_hold_recommend, 8, type: :int32, json_name: "totalHoldRecommend"
  field :total_sell_recommend, 9, type: :int32, json_name: "totalSellRecommend"
  field :currency, 10, type: :string

  field :consensus, 11,
    type: Tiapi.Proto.Recommendation,
    enum: true

  field :prognosis_date, 12, type: Google.Protobuf.Timestamp, json_name: "prognosisDate"
end

defmodule Tiapi.Proto.GetConsensusForecastsResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type:
      Tiapi.Proto.GetConsensusForecastsResponse.ConsensusForecastsItem

  field :page, 2, type: Tiapi.Proto.PageResponse
end

defmodule Tiapi.Proto.GetForecastRequest do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instrument_id, 1, type: :string, json_name: "instrumentId"
end

defmodule Tiapi.Proto.GetForecastResponse.TargetItem do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :ticker, 2, type: :string
  field :company, 3, type: :string

  field :recommendation, 4,
    type: Tiapi.Proto.Recommendation,
    enum: true

  field :recommendation_date, 5, type: Google.Protobuf.Timestamp, json_name: "recommendationDate"
  field :currency, 6, type: :string

  field :current_price, 7,
    type: Tiapi.Proto.Quotation,
    json_name: "currentPrice"

  field :target_price, 8,
    type: Tiapi.Proto.Quotation,
    json_name: "targetPrice"

  field :price_change, 9,
    type: Tiapi.Proto.Quotation,
    json_name: "priceChange"

  field :price_change_rel, 10,
    type: Tiapi.Proto.Quotation,
    json_name: "priceChangeRel"

  field :show_name, 11, type: :string, json_name: "showName"
end

defmodule Tiapi.Proto.GetForecastResponse.ConsensusItem do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uid, 1, type: :string
  field :ticker, 2, type: :string

  field :recommendation, 3,
    type: Tiapi.Proto.Recommendation,
    enum: true

  field :currency, 4, type: :string

  field :current_price, 5,
    type: Tiapi.Proto.Quotation,
    json_name: "currentPrice"

  field :consensus, 6, type: Tiapi.Proto.Quotation

  field :min_target, 7,
    type: Tiapi.Proto.Quotation,
    json_name: "minTarget"

  field :max_target, 8,
    type: Tiapi.Proto.Quotation,
    json_name: "maxTarget"

  field :price_change, 9,
    type: Tiapi.Proto.Quotation,
    json_name: "priceChange"

  field :price_change_rel, 10,
    type: Tiapi.Proto.Quotation,
    json_name: "priceChangeRel"
end

defmodule Tiapi.Proto.GetForecastResponse do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :targets, 1,
    repeated: true,
    type: Tiapi.Proto.GetForecastResponse.TargetItem

  field :consensus, 2,
    type: Tiapi.Proto.GetForecastResponse.ConsensusItem
end

defmodule Tiapi.Proto.TradingInterval.TimeInterval do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_ts, 1, type: Google.Protobuf.Timestamp, json_name: "startTs"
  field :end_ts, 2, type: Google.Protobuf.Timestamp, json_name: "endTs"
end

defmodule Tiapi.Proto.TradingInterval do
  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string

  field :interval, 2,
    type: Tiapi.Proto.TradingInterval.TimeInterval
end

defmodule Tiapi.Proto.InstrumentsService.Service do
  use GRPC.Service,
    name: "tinkoff.public.invest.api.contract.v1.InstrumentsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :TradingSchedules,
      Tiapi.Proto.TradingSchedulesRequest,
      Tiapi.Proto.TradingSchedulesResponse

  rpc :BondBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.BondResponse

  rpc :Bonds,
      Tiapi.Proto.InstrumentsRequest,
      Tiapi.Proto.BondsResponse

  rpc :GetBondCoupons,
      Tiapi.Proto.GetBondCouponsRequest,
      Tiapi.Proto.GetBondCouponsResponse

  rpc :GetBondEvents,
      Tiapi.Proto.GetBondEventsRequest,
      Tiapi.Proto.GetBondEventsResponse

  rpc :CurrencyBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.CurrencyResponse

  rpc :Currencies,
      Tiapi.Proto.InstrumentsRequest,
      Tiapi.Proto.CurrenciesResponse

  rpc :EtfBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.EtfResponse

  rpc :Etfs,
      Tiapi.Proto.InstrumentsRequest,
      Tiapi.Proto.EtfsResponse

  rpc :FutureBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.FutureResponse

  rpc :Futures,
      Tiapi.Proto.InstrumentsRequest,
      Tiapi.Proto.FuturesResponse

  rpc :OptionBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.OptionResponse

  rpc :Options,
      Tiapi.Proto.InstrumentsRequest,
      Tiapi.Proto.OptionsResponse

  rpc :OptionsBy,
      Tiapi.Proto.FilterOptionsRequest,
      Tiapi.Proto.OptionsResponse

  rpc :ShareBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.ShareResponse

  rpc :Shares,
      Tiapi.Proto.InstrumentsRequest,
      Tiapi.Proto.SharesResponse

  rpc :Indicatives,
      Tiapi.Proto.IndicativesRequest,
      Tiapi.Proto.IndicativesResponse

  rpc :GetAccruedInterests,
      Tiapi.Proto.GetAccruedInterestsRequest,
      Tiapi.Proto.GetAccruedInterestsResponse

  rpc :GetFuturesMargin,
      Tiapi.Proto.GetFuturesMarginRequest,
      Tiapi.Proto.GetFuturesMarginResponse

  rpc :GetInstrumentBy,
      Tiapi.Proto.InstrumentRequest,
      Tiapi.Proto.InstrumentResponse

  rpc :GetDividends,
      Tiapi.Proto.GetDividendsRequest,
      Tiapi.Proto.GetDividendsResponse

  rpc :GetAssetBy,
      Tiapi.Proto.AssetRequest,
      Tiapi.Proto.AssetResponse

  rpc :GetAssets,
      Tiapi.Proto.AssetsRequest,
      Tiapi.Proto.AssetsResponse

  rpc :GetFavorites,
      Tiapi.Proto.GetFavoritesRequest,
      Tiapi.Proto.GetFavoritesResponse

  rpc :EditFavorites,
      Tiapi.Proto.EditFavoritesRequest,
      Tiapi.Proto.EditFavoritesResponse

  rpc :GetCountries,
      Tiapi.Proto.GetCountriesRequest,
      Tiapi.Proto.GetCountriesResponse

  rpc :FindInstrument,
      Tiapi.Proto.FindInstrumentRequest,
      Tiapi.Proto.FindInstrumentResponse

  rpc :GetBrands,
      Tiapi.Proto.GetBrandsRequest,
      Tiapi.Proto.GetBrandsResponse

  rpc :GetBrandBy,
      Tiapi.Proto.GetBrandRequest,
      Tiapi.Proto.Brand

  rpc :GetAssetFundamentals,
      Tiapi.Proto.GetAssetFundamentalsRequest,
      Tiapi.Proto.GetAssetFundamentalsResponse

  rpc :GetAssetReports,
      Tiapi.Proto.GetAssetReportsRequest,
      Tiapi.Proto.GetAssetReportsResponse

  rpc :GetConsensusForecasts,
      Tiapi.Proto.GetConsensusForecastsRequest,
      Tiapi.Proto.GetConsensusForecastsResponse

  rpc :GetForecastBy,
      Tiapi.Proto.GetForecastRequest,
      Tiapi.Proto.GetForecastResponse
end

defmodule Tiapi.Proto.InstrumentsService.Stub do
  use GRPC.Stub,
    service: Tiapi.Proto.InstrumentsService.Service
end
