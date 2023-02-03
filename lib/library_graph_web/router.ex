defmodule LibraryGraphWeb.Router do
  use LibraryGraphWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: LibraryGraphWeb.Schema,
      interface: :simple,
      context: %{pubsub: LibraryGraphWeb.Endpoint}
  end
end
