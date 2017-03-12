defmodule Cornerstone.UserView do
  use Cornerstone.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Cornerstone.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Cornerstone.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      username: user.username,
      passwordHash: user.passwordHash,
      canonicalName: user.canonicalName}
  end
end
