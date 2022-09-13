defmodule Nftex.Art do
  use Ecto.Schema
  import Ecto.Changeset

  @required [:artist_name, :description, :price, :hash]

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "arts" do
    field :artist_name, :string
    field :description, :string
    field :hash, :string
    field :price, :float

    timestamps()
  end

  @doc false
  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @required)
    |> validate_required(@required)
  end
end
