defmodule Abslog.Repo do
  use Ecto.Repo,
    otp_app: :abslog,
    adapter: Ecto.Adapters.Postgres
end
