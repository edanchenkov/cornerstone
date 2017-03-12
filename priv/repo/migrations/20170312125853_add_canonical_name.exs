defmodule Cornerstone.Repo.Migrations.AddCanonicalName do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :canonicalName, :string
    end
  end
end
