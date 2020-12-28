defmodule ExMonWeb.WelcomeController do
  use ExMonWeb, :controller

  def index(conn, _params) do
    inspect(conn)
    text(conn, "Welcome do the ExMon API!")
  end
end
