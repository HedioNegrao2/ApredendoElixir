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

  def handle_file_read({:ok, result}),   do: result
  def handle_file_read({:error, reason}),   do: reason

end
