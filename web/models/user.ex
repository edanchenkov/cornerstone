defmodule Cornerstone.UserModel do
  use Cornerstone.Web, :model

  schema "users" do
    field :username, :string
    field :email, :string
    field :password, :string

    timestamps()
  end
end
