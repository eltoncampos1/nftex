defmodule Nftex.Arts.Create do
  alias Nftex.{Art, Repo}

  def call(params) do
    params
    |> Art.changeset()
    |> Repo.insert()
  end
end
