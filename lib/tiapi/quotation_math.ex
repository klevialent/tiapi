
defmodule Tiapi.QuotationMath do
  alias Tiapi.Proto.Quotation
  alias Tiapi.Proto.MoneyValue, as: Money

  @exponent 1_000_000_000

  @spec abs(Quotation.t() | Money.t()) :: Quotation.t()
  def abs(q) do
    q = normalize(q)

    %Quotation {
      units: Kernel.abs(q.units),
      nano: Kernel.abs(q.nano),
    }
  end

  @spec sum(Quotation.t() | Money.t(), Quotation.t() | Money.t()) :: Quotation.t()
  def sum(q1, q2) do
    %Quotation{
      units: q1.units + q2.units,
      nano: q1.nano + q2.nano,
    }
  end

  @spec sum([Quotation.t() | Money.t()]) :: Quotation.t()
  def sum([last_q]), do: last_q
  def sum([first_q | rest]), do: sum(first_q, sum(rest))

  @spec sub(Quotation.t() | Money.t(), Quotation.t() | Money.t()) :: Quotation.t()
  def sub(q1, q2) do
    %Quotation{
      units: q1.units - q2.units,
      nano: q1.nano - q2.nano,
    }
  end

  @spec mult(Quotation.t() | Money.t(), integer()) :: Quotation.t()
  def mult(q, int) when is_integer(int) do
    %Quotation{
      units: q.units * int,
      nano: q.nano * int,
    }
  end

  @spec mult(Quotation.t() | Money.t(), Quotation.t() | Money.t()) :: Quotation.t()
  def mult(q1, q2) do
    %Quotation{
      units: q1.units * q2.units,
      nano: q1.units * q2.nano + q2.units * q1.nano + round(q1.nano * q2.nano / @exponent),
    }
  end

  @spec mult([Quotation.t() | Money.t()]) :: Quotation.t()
  def mult([q_last]), do: q_last
  def mult([q_first | rest]), do: mult(q_first, mult(rest))

  @spec divd(Quotation.t() | Money.t(), Quotation.t() | Money.t()) :: Quotation.t()
  def divd(q1, q2) do
    int1 = intalize(q1)
    int2 = intalize(q2)

    %Quotation{
      units: div(int1, int2),
      nano: round(rem(int1, int2) * @exponent / int2),
    }
  end

  @spec intalize(Quotation.t() | Money.t()) :: integer()
  defp intalize(q) do
    q.units * @exponent + q.nano
  end

  @spec normalize(Quotation.t() | Money.t()) :: Quotation.t()
  def normalize(q) do
    int = intalize(q)
    %Quotation{
      units: div(int, @exponent),
      nano: rem(int, @exponent),
    }
  end

  @spec to_float(Quotation.t() | Money.t()) :: float()
  @spec to_float(Quotation.t() | Money.t(), integer()) :: float()
  def to_float(q, precision \\ 2) do
    number = q.units + q.nano / @exponent

    Float.round(number, precision)
  end

end
