defmodule NftexWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias NftexWeb.Schema.Types

  import_types Types.Art
  import_types Types.Custom.UUID4
end
