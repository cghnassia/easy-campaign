defmodule EasyCampaignWeb.PageController do
  use EasyCampaignWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
