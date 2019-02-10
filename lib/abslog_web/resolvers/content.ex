defmodule AbslogWeb.Resolvers.Content do

  def list_posts(_parent, _args, _resolution) do
    {:ok, Abslog.Content.list_posts()}
  end

end
