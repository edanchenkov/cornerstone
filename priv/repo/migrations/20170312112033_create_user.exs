defmodule Cornerstone.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :username, :string
      add :passwordHash, :string

      timestamps()
    end

  end
end
