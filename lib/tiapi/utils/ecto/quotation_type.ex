defmodule Tiapi.Ecto.Quotation do
  use Ecto.Type

  alias Tiapi.Proto.Quotation, as: QuotationProto
  alias Tiapi.Proto.MoneyValue
  alias Tiapi.Type.Quotation

  def type, do: :map

  def cast(%QuotationProto{} = quotation), do: to_quotation(quotation)
  def cast(%MoneyValue{} = quotation), do: to_quotation(quotation)
  def cast(%Quotation{} = quotation), do: {:ok, quotation}
  def cast(%{units: _, nano: _} = quotation), do: to_quotation(quotation)
  def cast(_), do: :error

  def load(data) when is_map(data) do
    data =
      for {key, val} <- data do
        {String.to_existing_atom(key), val}
      end

    {:ok, struct!(Quotation, data)}
  end

  def dump(%QuotationProto{} = quotation), do: to_quotation_map(quotation)
  def dump(%MoneyValue{} = quotation), do: to_quotation_map(quotation)
  def dump(%Quotation{} = quotation), do: {:ok, Map.from_struct(quotation)}
  def dump(%{units: _, nano: _} = quotation), do: {:ok, Map.from_struct(quotation)}
  def dump(_), do: :error

  defp to_quotation_map(%{units: _, nano: _} = quotation) do
    {:ok, quotation_type} = to_quotation(quotation)
    {:ok, Map.from_struct(quotation_type)}
  end

  defp to_quotation(%{units: units, nano: nano} = _quotation) when is_integer(units) and is_integer(nano) do
    quotation = %Quotation{
      units: units,
      nano: nano,
    }

    {:ok, quotation}
  end

end
