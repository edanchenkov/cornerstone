defmodule Cornerstone.UserTest do
  use Cornerstone.ModelCase

  alias Cornerstone.User

  @valid_attrs %{
    email: "foo@bar.com",
    passwordHash: "foobar",
    username: "fooBar",
    canonicalName: "foobar"
  }

  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
