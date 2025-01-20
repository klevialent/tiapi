defmodule Tiapi.QuotationMathTest do
  alias Tiapi.Type.Quotation
  import Tiapi.QuotationMath
  use ExUnit.Case

  test "absolute" do
    q = %Quotation{units: -1, nano: -1}

    assert Tiapi.QuotationMath.abs(q) == %Quotation{units: 1, nano: 1}
  end

  test "absolute not normalized" do
    q = %Quotation{units: -2, nano: 1}

    assert Tiapi.QuotationMath.abs(q) == %Quotation{units: 1, nano: 999_999_999}
  end

  test "sum" do
    q1 = %Quotation{units: 1, nano: 550_000_000}
    q2 = %Quotation{units: 2, nano: 770_000_000}

    assert sum(q1, q2) |> normalize() == %Quotation{units: 4, nano: 320_000_000}
  end

  test "add to zero quotation" do
    zero_q = %Quotation{}
    q = %Quotation{units: 2, nano: 22}

    assert sum(zero_q, q) |> normalize() == %Quotation{units: 2, nano: 22}
  end

  test "sum with lesser negative value" do
    q1 = %Quotation{units: 3, nano: 1}
    q2 = %Quotation{units: -1, nano: -10}

    assert sum(q1, q2) |> normalize() == %Quotation{units: 1, nano: 999_999_991}
  end

  test "sum with greater negative value" do
    q1 = %Quotation{units: 1, nano: 10}
    q2 = %Quotation{units: -3, nano: -2}

    assert sum(q1, q2) |> normalize() == %Quotation{units: -1, nano: -999_999_992}
  end

  test "sum of two negative values" do
    q1 = %Quotation{units: -1, nano: -11}
    q2 = %Quotation{units: -2, nano: -22}

    assert sum(q1, q2) |> normalize() == %Quotation{units: -3, nano: -33}
  end

  test "sum not normalized" do
    q1 = %Quotation{units: 10, nano: -100_000_000}
    q2 = %Quotation{units: 20, nano: 11_200_000_000}

    assert sum(q1, q2) |> normalize() == sum(normalize(q1), normalize(q2)) |> normalize()
  end

  test "sum of quotation list" do
    q1 = %Quotation{units: 1, nano: 11}
    q2 = %Quotation{units: 2, nano: 22}
    q3 = %Quotation{units: 3, nano: 33}

    assert sum([q1, q2, q3]) |> normalize() == %Quotation{units: 6, nano: 66}
   end

   test "subtraction lesser from greater" do
     q1 = %Quotation{units: 3, nano: 33}
     q2 = %Quotation{units: 1, nano: 11}

     assert sub(q1, q2) |> normalize() == %Quotation{units: 2, nano: 22}
   end

   test "subtraction equals" do
     q1 = %Quotation{units: 3, nano: 3}
     q2 = %Quotation{units: 3, nano: 3}

     assert sub(q1, q2) |> normalize() == %Quotation{}
   end

   test "subtraction greater from lesser" do
     q1 = %Quotation{units: 3, nano: 3}
     q2 = %Quotation{units: 5, nano: 1}

     assert sub(q1, q2) |> normalize() == %Quotation{units: -1, nano: -999_999_998}
   end

   test "subtraction quotation with greater nano" do
     q1 = %Quotation{units: 4, nano: 1}
     q2 = %Quotation{units: 2, nano: 3}

     assert sub(q1, q2) |> normalize() == %Quotation{units: 1, nano: 999_999_998}
   end

   test "subtraction not normalized" do
     q1 = %Quotation{units: 2, nano: -11}
     q2 = %Quotation{units: 5, nano: -15_000_000_017}

     assert sub(q1, q2) |> normalize() == sub(normalize(q1), normalize(q2)) |> normalize()
   end

  test "multiply quotation to integer" do
    q = %Quotation{units: 9, nano: 99}

    assert mult(q, 2) |> normalize() == %Quotation{units: 18, nano: 198}
  end

  test "multiplication of two quotations" do
    q1 = %Quotation{units: 4, nano: 20_000_008}
    q2 = %Quotation{units: 2, nano: 710_000_008}

    assert mult(q1, q2) |> normalize() == %Quotation{units: 10, nano: 894_200_054}
  end

  test "multiplication not normalized" do
    q1 = %Quotation{units: 1, nano: -5}
    q2 = %Quotation{units: 4, nano: 22_310_000_002}

    assert mult(q1, q2) |> normalize() == mult(normalize(q1), normalize(q2)) |> normalize()
  end

  test "multiplication of quotation list" do
    q1 = %Quotation{units: 2, nano: 22}
    q2 = %Quotation{units: 4, nano: 44}
    q3 = %Quotation{units: 8, nano: 88}

    assert mult([q1, q2, q3]) == %Quotation{units: 64, nano: 2112}
  end

  test "divide" do
    q1 = %Quotation{units: 4, nano: 20_000_007}
    q2 = %Quotation{units: 3, nano: 600_000_000}

    assert divd(q1, q2) |> normalize() == %Quotation{units: 1, nano: 116_666_669}
  end

  test "divide not normalized" do
    q1 = %Quotation{units: 4, nano: -20_000_007}
    q2 = %Quotation{units: -3, nano: 3600_000_000}

    assert divd(q1, q2) |> normalize() == divd(normalize(q1), normalize(q2)) |> normalize()
  end

  test "normalize" do
    q = %Quotation{units: 1, nano: 11_100_000_000}

    assert normalize(q) == %Quotation{units: 12, nano: 100_000_000}
  end

  test "normalize negative" do
    q = %Quotation{units: 5, nano: -15_000_000_017}

    assert normalize(q) == %Quotation{units: -10, nano: -17}
  end

  test "normalize positive normalized" do
    q = %Quotation{units: 1, nano: 11}

    assert normalize(q) == %Quotation{units: 1, nano: 11}
  end

  test "normalize positive normalized without units" do
    q = %Quotation{units: 0, nano: 11}

    assert normalize(q) == %Quotation{units: 0, nano: 11}
  end

  test "normalize negative normalized" do
    q = %Quotation{units: -1, nano: -11}

    assert normalize(q) == %Quotation{units: -1, nano: -11}
  end

  test "normalize negative normalized without units" do
    q = %Quotation{units: 0, nano: -11}

    assert normalize(q) == %Quotation{units: 0, nano: -11}
  end

  test "normalize negative nano" do
    q = %Quotation{units: 2, nano: -11}

    assert normalize(q) == %Quotation{units: 1, nano: 999_999_989}
  end

  test "normalize negative units" do
    q = %Quotation{units: -2, nano: 11}

    assert normalize(q) == %Quotation{units: -1, nano: -999_999_989}
  end

  test "convert to float" do
    q = %Quotation{units: 1, nano: 115_456_789}

    assert to_float(q) == 1.12
    assert to_float(q, 3) == 1.115
  end

  test "convert to float when empty first digit of nano" do
    q = %Quotation{units: 1, nano: 15_111_111}

    assert to_float(q) == 1.02
    assert to_float(q, 3) == 1.015
  end

  test "convert to float negative quotation" do
    q = %Quotation{units: -1, nano: -100_000_000}

    assert to_float(q) == -1.1
  end

  test "convert to float not normalized value" do
    q = %Quotation{units: -2, nano: 11}

    assert to_float(q) == -2.0
    assert to_float(q, 9) == -1.999_999_989
  end
end
