defmodule Probeersel.Repo do
  use Ecto.Repo,
    otp_app: :probeersel,
    adapter: Ecto.Adapters.MyXQL
end
