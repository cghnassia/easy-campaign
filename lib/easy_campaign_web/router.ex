defmodule EasyCampaignWeb.Router do
  use EasyCampaignWeb, :router
  use Coherence.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session
  end

  pipeline :protected do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session
  end

  scope "/" do
    pipe_through :browser
    coherence_routes()
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EasyCampaignWeb do
    pipe_through :browser # Use the default browser stack
    get "/", DefaultController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", EasyCampaignWeb do
  #   pipe_through :api
  # end
end
