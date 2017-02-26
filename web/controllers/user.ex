defmodule Cornerstone.UserController do
  use Cornerstone.Web, :controller

  def get(conn, _params) do
    json conn, [_params]
  end

  def create(conn, _params) do
    json conn, [_params]
  end

  def list(conn, _params) do
    # render conn, "index.html"
    json conn, []
  end
end
