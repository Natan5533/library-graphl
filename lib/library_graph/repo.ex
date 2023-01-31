defmodule LibraryGraph.Repo do
  use Ecto.Repo,
    otp_app: :library_graph,
    adapter: Ecto.Adapters.Postgres
end
