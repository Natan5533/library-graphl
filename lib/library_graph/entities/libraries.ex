defmodule LibraryGraph.Entities.Libraries do
  alias LibraryGraph.Repo
  alias LibraryGraph.Library

  def list do
    Repo.all(Library)
  end

  def create(params \\ %{}) do
    %Library{}
    |> Library.changeset(params)
    |> Repo.insert()
  end
end
