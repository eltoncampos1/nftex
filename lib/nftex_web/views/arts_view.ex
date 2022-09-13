defmodule NftexWeb.ArtsView do
  use NftexWeb, :view

  def render("arts.json", %{data: %{arts: arts}}) do
    %{
      arts: render_many(arts, NftexWeb.ArtsView, "art.json", as: :art)
    }
  end

  def render("art.json", %{art: art}) do
    %{
      id: art.id,
      artist_name: art.artist_name,
      description: art.description
    }
  end
end
