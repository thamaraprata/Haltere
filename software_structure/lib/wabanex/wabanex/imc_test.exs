defmodule Wabanex.IMCtest do
  use ExUnit.Case, async: true

  describe "calculate/1 " do
    test "when the file exist, return the data " do
      params =%{"filename" => "students.csv"}

      reponse = IMC.calculate(params)

      expect_reponse =
        {:ok,
        %{
          "Dani" => 23.23456789,
          "Diego" => 22.674567834,
          "Gabul" => 22.345678445,
          "Rafael" => 24.3278347983,
          "Rodrigo" => 26.234574879
        }}

      assert response == expected_response
    end
  end
end
