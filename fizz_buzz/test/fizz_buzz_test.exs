defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "Quando arquivo valido, retorne lisa" do
      retornoEsperado = {:ok, [1, 2, :fiz, 4, :buzz, :fiz, :buzz, :fizzbuzz, :buzz, :fiz]}
      assert FizzBuzz.build("numeros.txt") == retornoEsperado
    end

    test "Quando arquivo invalido, retorne erro" do
      retornoEsperado = {:error, "Erro ao ler o arquivo : enoent"}
      assert FizzBuzz.build("numero2s.txt") == retornoEsperado
    end
  end
end
