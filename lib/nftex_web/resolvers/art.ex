defmodule NftexWeb.Resolvers.Art do
  alias Nftex.Arts

  def get(%{id: id}, __context), do: Arts.get(id)
end
