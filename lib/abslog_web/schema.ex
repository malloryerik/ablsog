defmodule AbslogWeb.Schema do
	use Absinthe.Schema
  import_types AbslogWeb.Schema.ContentTypes

  alias AbslogWeb.Resolvers

  query do

    @desc "Get every post"
    field :posts, list_of(:post) do
      resolve &Resolvers.Content.list_posts/3
    end
  end

end
