defmodule Nftex.Arts do
  alias Nftex.Arts.{Create, Get}

  defdelegate create(params), to: Create, as: :call
  defdelegate get(params), to: Get, as: :call
end
