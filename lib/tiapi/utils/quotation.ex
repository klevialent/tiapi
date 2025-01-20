
defmodule Tiapi.Type.Quotation do
  defstruct units: 0, nano: 0
end

defimpl String.Chars, for: Tiapi.Type.Quotation do
  alias Tiapi.QuotationMath

  def to_string(quotation) do
    QuotationMath.to_float(quotation) |> Kernel.to_string()
  end

end

if Code.ensure_loaded?(Phoenix.HTML) do
  defimpl Phoenix.HTML.Safe, for: Tiapi.Type.Quotation do

    def to_iodata(quotation) do
      to_string(quotation) |> Phoenix.HTML.Safe.to_iodata()
    end
  end
end
