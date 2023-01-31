defmodule LibraryGraph.Repo.Migrations.CreateLibraries do
  use Ecto.Migration

  def change do
    create table(:libraries) do
      add :address, :string
      add :name, :string

      timestamps()
    end
  end
end
