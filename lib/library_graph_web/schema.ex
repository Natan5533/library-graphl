defmodule LibraryGraphWeb.Schema do
  use Absinthe.Schema

  alias LibraryGraphWeb.LibrariesResolver

  object :library do
    field :name, non_null(:string)
    field :address, non_null(:string)
  end

  query do

  end
end
