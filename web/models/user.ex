defmodule Cornerstone.User do
  use Cornerstone.Web, :model

  schema "users" do
    field :email, :string, primary_key: true
    field :username, :string
    field :passwordHash, :string

    field :canonicalName, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:email, :username, :passwordHash])
    |> generateCanonicalName
    |> validate_required([:email, :username, :passwordHash])
  end

  def generateCanonicalName(changeset) do
    username = get_field(changeset, :username)
    if username do
      canonicalName = String.downcase(username)
      put_change(changeset, :canonicalName, canonicalName)
    else
      changeset
    end
  end

end
