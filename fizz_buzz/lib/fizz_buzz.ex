defmodule FizzBuzz do
 
  def build(file_neame) do
    arquivo =  File.read(file_neame)
    IO.inspect(arquivo)
  end
end
