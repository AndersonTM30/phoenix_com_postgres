defmodule ElixirComDb.Repo do
  use Ecto.Repo,
    otp_app: :elixir_com_db,
    adapter: Ecto.Adapters.Postgres
end
