defmodule LibraryGraphWeb.Resolver do
  alias LibraryGraph.Entities.Libraries

  def all_lib(_root, _args, _info) do
    {:ok, Libraries.list}
  end

  def create_library(_root, args, _info) do
    case Libraries.create(args) do
      {:ok, library} ->
        {:ok, library}
      _error ->
        {:error, "Deu ruim"}
    end
  end
end
