defmodule LibraryGraph.Library do
  use Ecto.Schema
  import Ecto.Changeset

  schema "libraries" do
    field :address, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(library, attrs) do
    library
    |> cast(attrs, [:address, :name])
    |> validate_required([:address, :name])
  end
end
