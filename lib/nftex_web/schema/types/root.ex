defmodule NftexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias NftexWeb.Schema.Types
  alias NftexWeb.Resolvers.Art, as: ArtResolver

  import_types Types.Art
  import_types Types.Custom.UUID4

  object :root_query do
    @desc "Get art by id"
    field :art, type: :art do
      arg :id, non_null(:uuid4)

      resolve &ArtResolver.get/2
    end
  end
end
