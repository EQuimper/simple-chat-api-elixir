defmodule ChatApiDemo.Router do
  use ChatApiDemo.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChatApiDemo do
    pipe_through :api
  end
end
