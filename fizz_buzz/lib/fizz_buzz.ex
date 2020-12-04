defmodule FizzBuzz do
  def build(file_neme) do
    # case File.read(file_neme) do
    #   {:ok, result} -> result
    #   {:error, reason} -> reason
    # end
    file_neme
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    resultado =
      result
      |> String.split(",")
      # Esse & server para chamar um funcao  e o /1 é a aridade
      |> Enum.map(&converter_e_alterar_numero/1)

    {:ok, resultado}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Erro ao ler o arquivo : #{reason}"}

  defp converter_e_alterar_numero(item) do
    item
    |> String.to_integer()
    |> avaliar_numero()
  end

  defp avaliar_numero(numero) when rem(numero, 3) == 0 and rem(numero, 5) == 0, do: :fizzbuzz
  defp avaliar_numero(numero) when rem(numero, 3) == 0, do: :fiz
  defp avaliar_numero(numero) when rem(numero, 5) == 0, do: :buzz
  defp avaliar_numero(numero), do: numero
end
