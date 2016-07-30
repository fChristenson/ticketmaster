defmodule Ticketmaster.Router do
  use Ticketmaster.Web, :router

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

  scope "/", Ticketmaster do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/search", PageController, :search
    get "/event", PageController, :event
    get "/buy", PageController, :buy
    get "/confirmation", PageController, :confirmation
  end

  # Other scopes may use custom stacks.
  # scope "/api", Ticketmaster do
  #   pipe_through :api
  # end
end
