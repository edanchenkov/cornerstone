defmodule Cornerstone.Router do
  use Cornerstone.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Cornerstone do
    pipe_through :browser
    get "/", IndexController, :get
  end

  scope "/api/v1", Cornerstone do
    pipe_through :api
    # get "/user/:id", UserController, :get
    # get "/user/list", UserController, :list
    # post "/user", UserController, :create
    resources "/users", UserController, except: [:new, :edit]
  end

end
