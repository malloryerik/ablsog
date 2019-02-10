defmodule AbslogWeb.Router do
  use AbslogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: AbslogWeb.Schema

    forward "/", Absinthe.Plug,
      schema: AbslogWeb.Schema

  end

end
