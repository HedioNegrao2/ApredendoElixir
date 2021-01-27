defmodule ExMon.Trainer.Create do
    alias ExMon.{Repo, Trainer}

    def call(params) do
        params
    |> Trainer.build()
    |> create_trainer()
    end

    defp create_trainer({:ok, strcut}), do: Repo.insert(strcut)
    defp create_trainer({:error, _changset} =  error ), do: error

end
