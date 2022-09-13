defmodule NftexWeb.Schema.Types.Art do
  use Absinthe.Schema.Notation

  object :art do
    field :id, non_null(:uuid4)
    field :artist_name, non_null(:string)
    field :description, non_null(:string)
    field :price, non_null(:fload)
    field :hash, non_null(:string)
  end
end