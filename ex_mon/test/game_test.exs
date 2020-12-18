defmodule ExMon.GameTest do
  use ExUnit.Case
  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = Player.build("Hedio", :bicudo, :bufete, :reza)
      computador = Player.build("Robotinik", :chute, :soco, :cura)

      assert {:ok, _pid} = Game.start(computador, player)
    end
  end

  describe "info/0" do
    test "returns the currente game state" do
      player = Player.build("Hedio", :bicudo, :bufete, :reza)
      computador = Player.build("Robotinik", :chute, :soco, :cura)
      Game.start(computador, player)

      expected_response = %{
        computer: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "Robotinik"
        },
        player: %Player{
          life: 100,
          moves: %{move_avg: :bufete, move_heal: :reza, move_rnd: :bicudo},
          name: "Hedio"
        },
        status: :strarted,
        turn: :player
      }

      assert Game.info() == expected_response
    end
  end
 describe  "update/1"
  test "returns the game updated"

end
