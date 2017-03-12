defmodule Cornerstone.IndexController do
  use Cornerstone.Web, :controller

  def get(conn, _params) do
    text conn, "Cornerstone GET '/'"
  end

end
