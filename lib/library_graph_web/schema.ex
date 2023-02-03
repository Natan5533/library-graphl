defmodule LibraryGraphWeb.Schema do
  use Absinthe.Schema

  alias LibraryGraphWeb.Resolver

  object :library do
    field :name, non_null(:string)
    field :address, non_null(:string)
  end

  query do
    @desc "get all libraries"
    field :all_libraries, non_null(list_of(:library)) do
      resolve(&Resolver.all_lib/3)
    end
  end

  mutation do
    @desc "Create a new library"
    field :create_library, :library do
      arg :name, non_null(:string)
      arg :address, non_null(:string)

      resolve(&Resolver.create_library/3)

    end
  end
end
