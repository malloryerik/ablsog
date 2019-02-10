defmodule AbslogWeb.Router do
  use AbslogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AbslogWeb do
    pipe_through :api
  end
end
