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

  def handle_file_read({:ok, result}) do
    result
      |> String.split(",")
      |> Enum.map(&String.to_integer/1) #Esse & server para chamar um funcao que não é nossa e o /1 é a aridade

  end

  def handle_file_read({:error, reason}),   do: "Erro ao ler o arquivo :#{reason}"

end
