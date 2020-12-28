defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias ExMon.Player


  describe "create_player/4" do
    test "return a player" do
      expected_response = %ExMon.Player{
        life: 100,
        moves: %{
          move_avg: :tapa,
          move_heal: :reza,
          move_rnd: :bicudo
        },
        name: "Hedio"
      }
      assert  expected_response ==  ExMon.create_player("Hedio", :bicudo, :tapa, :reza )
    end

  end

  describe " start_game" do
    test "when the game is started, returns a message" do
      player = Player.build("Hedio", :bicudo, :bufete, :reza)

      messages =
      capture_io( fn ->
        assert ExMon.start_game(player) == :ok
      end)
      assert messages =~  "The game is started!"
      assert messages =~  "status: :started"
    end
  end

  describe "make_move/1" do
    setup do
      player = Player.build("Hedio", :bicudo, :bufete, :reza)
      ExMon.start_game(player)
      :ok
    end

    test "when the move is valid, do  the move and the computer makes a move" do



      messages =
      capture_io( fn ->
        ExMon.make_move(:bicudo)
      end)
      assert messages =~  "The Player attacked the computer dealing"
      assert messages =~  "It's computer turn"
      assert messages =~  "status: :continue "

    end

    test "when the move is invalid, returns an error message" do

    end

  end


end
