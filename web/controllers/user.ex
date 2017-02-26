defmodule Cornerstone.UserController do
  use Cornerstone.Web, :controller

  # def get(conn, _params) do
  #   IO.puts "Hello worlds"
  #   json conn, []
  # end

  def create(conn, _params) do
    IO.puts("Trying to create new user")
    # Cornerstone.UserModel
    json conn, []
  end

  # def list(conn, _params) do
  #   # render conn, "index.html"
  #   json conn, []
  # end
end
